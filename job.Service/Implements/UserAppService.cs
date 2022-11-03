using AutoMapper;

using job.DataAccess.Models;
using job.DataAccess.Repositories.Interfaces;
using job.Service.Dtos;
using job.Service.Dtos.Users;
using job.Service.Implements.Abstract;
using job.Service.Interfaces;

using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

using Volo.Abp;

namespace job.Service.Implements
{
    public class UserAppService : AppService, IUserAppService
    {
        private readonly IUserRepository _userRepository;

        public UserAppService(IMapper mapper, IUserRepository userRepository)
            : base(mapper)
        {
            _userRepository = userRepository;
        }

        public async Task<UserDto> GetAsync(int id)
        {
            var user = await _userRepository.GetAsync(id);

            return Mapper.Map<UserDto>(user);
        }

        public async Task<IEnumerable<UserDto>> GetListAsync()
        {
            var users = await _userRepository.GetListAsync(u => true);

            return Mapper.Map<IEnumerable<UserDto>>(users);
        }

        public async Task<UserDto> LoginAsync(UserLoginQuery query)
        {
            var user = await _userRepository.GetAsync(u => u.UserName == query.UserName.ToUpper());

            if (user is null) throw new UserFriendlyException("ユーザーが存在しないです。");

            if (user.IsDelete && user.Identity == "NO") throw new UserFriendlyException("このユーザーが既に退会しました。");

            if (user.Password != query.Password) throw new UserFriendlyException("ユーザーかパスワードが間違えています、再確認をお願いいたします。");

            return Mapper.Map<UserDto>(user);
        }

        public async Task<UserDto> RegisterAsync(RegisterUserDto input)
        {
            var user = Mapper.Map<User>(input);

            var hasExist = (await _userRepository.GetAsync(u => u.UserName == input.UserName)) != null;
            if (hasExist) throw new UserFriendlyException($"{input.UserName} 既に存在しました。");

            hasExist = (await _userRepository.GetAsync(u => u.Email == input.Email)) != null;
            if (hasExist) throw new UserFriendlyException($"{input.Email} もう使われています。");

            user.Type = "member";
            user.Identity = "OK";

            await _userRepository.InsertAsync(user);

            return Mapper.Map<UserDto>(user);
        }

        public async Task<UserDto> CreateAsync(CreateUserDto input)
        {
            var user = Mapper.Map<User>(input);

            await _userRepository.InsertAsync(user);

            return Mapper.Map<UserDto>(user);
        }

        public async Task RemoveAsync(int id)
        {
            var user = await _userRepository.GetAsync(id);

            if (user is null) return;

            if (user.UserName == "Admin") throw new UserFriendlyException("Can't Remove Admin");

            await _userRepository.DeleteAsync(user);
        }

        public async Task<UserDto> UpdateAsync(int id, UpdateUserDto input)
        {
            var user = await _userRepository.GetAsync(id);
            if (user is null) throw new UserFriendlyException("ユーザーが見つかりませんでした。");

            Mapper.Map(input, user);

            await _userRepository.UpdateAsync(user);

            return Mapper.Map<UserDto>(user);
        }

        public async Task<UserDto> VerifyEmailAsync(string token, string email)
        {
            if (string.IsNullOrWhiteSpace(token) || string.IsNullOrWhiteSpace(email))
            {
                return null;
            }

            var user = await _userRepository.GetAsync(u => u.Email == email);
            if (user is null || user.EmailConfirmeToken != token)
            {
                return null;
            }

            if (!user.EmailConfirmed)
            {
                user.EmailConfirmed = true;
                await _userRepository.UpdateAsync(user);
            }

            return Mapper.Map<UserDto>(user);
        }

        public async Task<UserDto> EditAsync(UserDto input)
        {
            var user = await _userRepository.GetAsync(input.Id);
            if (user is null) throw new UserFriendlyException("找不到用户");

            Mapper.Map(input, user);

            user = await _userRepository.UpdateAsync(user);

            return Mapper.Map<UserDto>(user);
        }

        public async Task<PagedResultDto<UserDto>> GetListAsync(MemberPagedQueryDto input)
        {
            Expression<Func<User, bool>> predicate = e => true;
            //如果Name不为空的话，获取到Name
            if (!string.IsNullOrEmpty(input.Name)) predicate = predicate.And(e => e.Name.Contains(input.Name));
           
            //如果Email不为空的话，获取到Email
            if (!string.IsNullOrEmpty(input.Email)) predicate = predicate.And(e => e.Email.Contains(input.Email));
            
            //如果Type不为空的话，就获取Type
            if (!string.IsNullOrEmpty(input.Type)) predicate = predicate.And(e => e.Type.Contains(input.Type));
            
            //如果退会会员的话，就获取IsDelete
            if (input.IsOff) predicate = predicate.And(e => e.IsDelete);

            //else 
            //predicate = predicate.And(e => !e.IsDelete && e.Identity == "OK");
            var dto = await GetListAsync<MemberPagedQueryDto, User, PagedResultDto<UserDto>, UserDto>(input, _userRepository, predicate);
            return dto;
        }

        public async Task<bool> MemberAgree(int id)
        {
            var user = await _userRepository.GetAsync(id);
            user.Identity = "NO";
            user = await _userRepository.UpdateAsync(user);
            return user.Id > 0;
        }
    }
}

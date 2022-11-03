using job.DataAccess.Models.Abstract;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace job.DataAccess.Repositories.Abstract
{
    public interface IBasicAdoRepository<T> : IRepository where T : IEntity
    {
        Task<T> GetAsync(string sql, CancellationToken cancellationToken = default);

        Task<T> GetAsync(string sql, object param, CancellationToken cancellationToken = default);

        Task<List<T>> GetListAsync(string sql, CancellationToken cancellationToken = default);

        Task<List<T>> GetListAsync(string sql, object param, CancellationToken cancellationToken = default);
    }
}

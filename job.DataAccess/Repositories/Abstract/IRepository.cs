using job.DataAccess.Models.Abstract;

namespace job.DataAccess.Repositories.Abstract
{
    public interface IRepository
    {
    }

    public interface IRepository<T> : IBasicRepository<T>, IReadonlyRepository<T>
        where T : IEntity
    {
    }
}

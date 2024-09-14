using Shop.DAL.Models;
namespace Shop.DAL.Interfaces
{
  public interface IDepartmentDb
    {
        List<DepartmentModel> GetDepartmentModels();
    }
}

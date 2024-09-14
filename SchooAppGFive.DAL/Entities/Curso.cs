using Shop.DAL.Core;
namespace Shop.DAL.Entities
{
    public class Curso : BaseEntity
    {
        public int CourseID {  get; set; }
        public string? Title { get; set; }
        public int Credits { get; set; }
        public int DepartmentID { get; set; }
    }
}

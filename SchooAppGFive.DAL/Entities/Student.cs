using Shop.DAL.Core;

namespace Shop.DAL.Entities
{
    public class Student : Person
    {
        public DateTime EnrollmentDate { get; set; }
    }
}

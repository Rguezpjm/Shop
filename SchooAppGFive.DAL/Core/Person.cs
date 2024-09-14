
namespace Shop.DAL.Core
{
    public abstract class Person : BaseEntity
    {
        public string? Firstname { get; set; }
        public string? Lastname { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop.DAL.Models
{
    public partial class DepartmentModel : Component
    {
        public DepartmentModel()
        {
            InitializeComponent();
        }

        public DepartmentModel(IContainer container)
        {
            container.Add(this);

            InitializeComponent();
        }
    }
}

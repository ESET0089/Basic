using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataStructureDemo
{
    internal class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }

        

        public Student() {
            Id = 0;
            Age = 1;
            Name = string.Empty;
        }

        public Student(int ID, string studentName, int studentAge)
        {
            this.Id = ID;
            this.Name = studentName;
            this.Age = studentAge;
        }

    }
}

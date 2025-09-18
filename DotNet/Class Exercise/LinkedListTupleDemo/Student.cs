using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinkedList_Tuple_Demo
{
    internal class Student
    {
        public int id { get; set; }
        public string name { get; set; }    
        public int marks { get; set; }

        public Student(int Id, string Name, int Marks) {
            this.id = Id;
            this.name = Name;
            this.marks = Marks;
        }
    }
}

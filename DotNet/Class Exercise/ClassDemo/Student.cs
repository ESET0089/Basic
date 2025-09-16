using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDemo
{
    internal class Student
    {
        private int student_id;
        private string name;
        private int age;
        private string contactno;
        private string emailid;

        public void initialize()
        {
            student_id = 111;
            name = "Name";
        }

        public void displayStudentDetails()
        {
            Console.WriteLine("ID", student_id);
            Console.WriteLine("Name", name);
        }

        public Student(int student_id, string student_name)
        {
            this.student_id = student_id;
            this.name = student_name;
        }

        public Student() { }
    }
    
}

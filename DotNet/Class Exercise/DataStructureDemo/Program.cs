namespace DataStructureDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Student> student_list = new List<Student>();
            student_list.Add(new Student(01,"Gopal",23));
            student_list.Add(new Student(02,"Venkata Koushik",20));
            student_list.Add(new Student(03,"Reetu Raj", 27));

            Console.WriteLine("The Student Details are displayed below");
            Console.WriteLine("ID \t Name \t Age \n");

            foreach (Student student in student_list) {
                Console.WriteLine($" {student.Id} {student.Name} {student.Age}");
            }

            // Create list of dictionary for saving student details


            Console.WriteLine("\n\nThe Student Details from dictionary are displayed below");
            List<Dictionary<String, String>> student_dict_str = new List<Dictionary<String, String>>();
            for (int i = 0; i < student_list.Count; i++)
            {
                student_dict_str.Add(new Dictionary<String, String> { { "Id", student_list[i].Id.ToString() }, { "Name", student_list[i].Name }, { "Age", student_list[i].Age.ToString() } });
            }
            Console.WriteLine("Student Details from Dictionary with string key and value are as follows:");
            foreach (var dict in student_dict_str)
            {
                foreach (var kvp in dict)
                {
                    Console.WriteLine($"{kvp.Key}: {kvp.Value}");
                }
                Console.WriteLine();
            }




        }


    }
}

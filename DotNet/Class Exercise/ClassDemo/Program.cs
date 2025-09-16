namespace ClassDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student student = new Student();
            student.initialize();
            student.displayStudentDetails();

            Student firstStudent = new Student(1,"Gourav");

        }
    }
}

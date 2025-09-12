using System.Linq.Expressions;

namespace Book_Shop_Management
{
    internal class Program
    {
        static int sum;
        static string title, author, customerName;
        static int quantity, price;
        //static void Mains(string[] args)
        //{
        //    int num1, num2;
        //    Console.WriteLine("Hello, World!");
        //    Console.WriteLine("Enter first number");
        //    num1 = Convert.ToInt32(Console.ReadLine());
        //    Console.WriteLine("Enter second number");
        //    num2 = Convert.ToInt32(Console.ReadLine());
        //    sum = num1 + num2;
        //    Console.WriteLine("The sum is: " + sum);
        //    var myResult = Addition(num1, num2);
        //    string name = "abcd";
        //    string displayName = name ?? "Unknown";
        //    Console.WriteLine(displayName); // Output: Unknown
        //    Console.WriteLine(myResult.firstnumber); // Output: Unknown
        //}

        //static (int firstnumber, int secondnumber, int result) Addition(int firstnumber, int secondnumber)
        //{
        //    Console.WriteLine("Reached Addition method");
        //    sum = firstnumber + secondnumber;
        //    Console.WriteLine("The sum of {0} and {1} is :{2}", firstnumber, secondnumber, sum);
        //    return (firstnumber, secondnumber, sum);
        //}

        static void Main(string[] args)
        {
            
            int choice = 0;

            while (choice != 5)
            {

                Console.WriteLine("====== BOOK SHOP MENU ======");
                Console.WriteLine("1. Add Book");
                Console.WriteLine("2. Sell Book");
                Console.WriteLine("3. View Books");
                Console.WriteLine("4. View Sales Report");
                Console.WriteLine("5. Exit");
                Console.WriteLine("============================");

                Console.Write("\n Choice: ");
                choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1:
                        addBook();
                        break;
                    case 2:
                        sellBook();
                        break;
                    case 3:
                        viewBook();
                        break;
                    case 4:
                        viewSalesReport();
                        break;
                    case 5:
                        Console.WriteLine("Thanks for using Book Shop Management!");
                        Environment.Exit(0);

                }
            }

            




        }

        static void addBooks()
        {
            Console.Write("Enter book title to sell: ");
            title = Console.ReadLine();

            Console.Write("Enter author: ");
            author = Console.ReadLine();

            Console.Write("Enter price: ");
            price = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter price: ");
            quantity = Convert.ToInt32(Console.ReadLine());
        }

        
        static void sellBook()
        {
            Console.Write("Enter book title to sell: ");
            title = Console.ReadLine();
            Console.Write("Enter quantity to sell: ");
            quantity = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter Customer Name: ");
            customerName = Console.ReadLine();
            if (quantity <= quantity)
            {
                Console.WriteLine($"Sold {quantity} copies of {title} to {customerName}.");
                quantity -= quantity;
            }
            else
            {
                Console.WriteLine($"Cannot sell as only {quantity} books are available.");
            }
        }
        

    }
}


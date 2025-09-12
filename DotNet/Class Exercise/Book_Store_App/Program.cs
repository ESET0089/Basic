namespace Book_Store_App
{
    internal class Program
    {
        static string title, author, customerName, sellTitle;
        static float price;
        static int quantity, sellQuantity;
        static void Main(string[] args)
        {
            int choice = 0;
            while (choice != 5)
            {
                Console.WriteLine("====== BOOK SHOP MENU ======");
                Console.WriteLine("1. Add Book\r\n2. Sell Book\r\n3. View Books\r\n4. View Sales Report\r\n5. Exit");
                Console.WriteLine("============================");
                Console.Write("Choice: ");
                choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case (1):
                        addBook();
                        break;
                    case (2):
                        sellBook();
                        break;
                    case (3):
                        viewBooks();
                        break;
                    case (4):
                        viewSalesReport();
                        break;
                    case (5):
                        Console.WriteLine("Thanks for using Book Shop Management!");
                        Environment.Exit(0);
                        break;
                    default:
                        Console.WriteLine("Invalid Choice");
                        break;

                }

            }


        }
        static void addBook()
        {
            Console.Write("Enter book title: ");
            title = Console.ReadLine();
            Console.Write("Enter author: ");
            author = Console.ReadLine();
            Console.Write("Enter price: ");
            price = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter quantity: ");
            quantity = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Book added successfully.");
        }
        static void sellBook()
        {
            Console.Write("Enter book title to sell: ");
            sellTitle = Console.ReadLine();
            Console.Write("Enter quantity to sell: ");
            sellQuantity = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter Customer Name: ");
            customerName = Console.ReadLine();
            if (sellQuantity <= quantity)
            {
                Console.WriteLine($"Sold {sellQuantity} copies of {sellTitle} to {customerName}.");
                quantity -= sellQuantity;
            }
            else
            {
                Console.WriteLine($"Cannot sell as only {quantity} books are available.");
            }
        }

        static void viewBooks()
        {
            string bookInfo = $"Book Title: {title}\nAuthor: {author}\nPrice: {price}\nQuantity: {quantity}";
            Console.WriteLine(bookInfo);
        }
        static void viewSalesReport()
        {
            string saleInfo = $"Customer Name: {customerName}\nBook Sold: {title}\nQuantity Sold: {sellQuantity}\nAmount: {sellQuantity * price}";
            Console.WriteLine(saleInfo);
        }
    }
}

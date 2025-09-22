using System.Data.SqlClient;
namespace DatabaseDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"LAPTOP-SOE66G3G"; // your server
            var database = "dotNet_B1"; // your database name
            //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
            //var password = ""; // password

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";


            Console.WriteLine(connString);

            SqlConnection conn = new SqlConnection(connString);

            try
            {
                Console.WriteLine("Opening Connection ...");
                // Open the connection
                conn.Open();
                Console.WriteLine("Connection successful!");
                //InsertOrderDetails(conn);
                DisplayOrders(conn);

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                // Close the connection
                conn.Close();
            }


        }
        static void InsertOrderDetails(SqlConnection conn)
        {
            int food_id = 101;
            string FoodName = "Manchurian";
            string CustomerName = "Venkat";
            string querry = "INSERT INTO foodDetails values(" + food_id + ",'" +FoodName+ "','"+ CustomerName +"')";
            SqlCommand cm = new SqlCommand(querry, conn);
            //cm.Parameters.AddWithValue("@name", myname);
            int rows = cm.ExecuteNonQuery();
            if (rows > 0)
            {
                Console.WriteLine("Inserted record successfully");
            }
        }
        static void DisplayOrders(SqlConnection conn)
        {
            string query = "select * from foodDetails";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader reader = cm.ExecuteReader();
            Console.WriteLine("Orders :");
            while (reader.Read())
            {
                {
                    Console.WriteLine($"Order ID: {reader["food_id"]}, Food: {reader["FoodName"]}, Customer Name: {reader["CustomerName"]}");

                }
            }
        }
    }
}

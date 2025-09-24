using System;

namespace Inheritance_demo
{
    internal class SavingsAccount : Account
    {
        public double InterestRate { get; set; }

        public void Init(string accountNumber, string holderName, double balance = 0.0, double interestRate = 0.05)
        {
            base.Init(accountNumber, holderName, balance);
            InterestRate = interestRate;
        }

        public void ApplyInterest()
        {
            double interest = Balance * InterestRate;
            Balance += interest;
            Console.WriteLine($"Interest of ₹{interest} applied. New Balance: ₹{Balance}");
        }
    }
}

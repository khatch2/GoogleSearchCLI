using System;
using System.Diagnostics;

class GoogleSearchCLI
{
    static void Main()
    {
        Console.Write("Enter your search query: ");
        string query = Console.ReadLine();

        string url = "https://www.google.com/search?q=" + Uri.EscapeDataString(query);

        ProcessStartInfo psi = new ProcessStartInfo
        {
            FileName = url,
            UseShellExecute = true
        };

        Process.Start(psi);
        Console.WriteLine("Searching for: " + query);
    }
}

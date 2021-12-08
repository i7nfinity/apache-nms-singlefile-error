using System;
using Apache.NMS;

namespace ApacheNmsSingleAppError
{
    public static class Program
    {
        public static void Main()
        {
            try
            {
                const string nmsUriString = "activemq:tcp://localhost:61616";
                IConnectionFactory connectionFactory = new NMSConnectionFactory(nmsUriString);
                Console.WriteLine($"ConnectionFactory '{connectionFactory}' successful created!");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
            }
        }
    }
}
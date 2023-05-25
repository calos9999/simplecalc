using System;

class Program
{
    static void Main(string[] args)
    {
        int somma = 0;
        int differenza = 0;
        int prodotto = 0;
        int quoziente = 0;
        int resto = 0;
        int potenza = 0;
        int a = 0;
        int b = 0;
        char confermauscita = ' ';
        char invio = ' ';

        Console.WriteLine("SUPER CALCOLATRICE DI CALOGERO IN C#");
        Console.WriteLine("Premi un tasto per continuare, oppure premi 'v' per stampare le info di questo eseguibile");
        invio = Console.ReadKey().KeyChar;
        
        if (invio == 'v')
        {
            Console.WriteLine("Versione 1.0");
            return;
        }
        else
        {
            Console.WriteLine("Inserisci il primo numero");
            a = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Inserisci il secondo numero");
            b = Convert.ToInt32(Console.ReadLine());
        }

        if (b == 0)
        {
            somma = a;
            differenza = a;
            prodotto = 0;
            Console.WriteLine("La somma è: " + somma);
            Console.WriteLine("La differenza è: " + differenza);
            Console.WriteLine("Il prodotto è: " + prodotto);
            Console.WriteLine("La divisione è impossibile");
        }
        else
        {
            somma = a + b;
            differenza = a - b;
            prodotto = a * b;
            quoziente = a / b;
            resto = a % b;
            potenza = (int)Math.Pow(a, b);

            Console.WriteLine("La somma è: " + somma);
            Console.WriteLine("La differenza è: " + differenza);
            Console.WriteLine("Il prodotto è: " + prodotto);
            Console.WriteLine("Il quoziente è: " + quoziente);
            Console.WriteLine("Il resto della divisione è: " + resto);
            Console.WriteLine("Il risultato della potenza è: " + potenza);

            Console.WriteLine("Uscire? (y/n):");
            confermauscita = Console.ReadKey().KeyChar;
            if (confermauscita == 'y' || confermauscita == 'Y')
            {
                return;
            }
            Console.WriteLine("Digitare ./calc per riavviare il programma");
        }
    }
}

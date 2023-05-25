import java.util.Scanner;

public class Calcolatrice {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int somma = 0;
        int differenza = 0;
        int prodotto = 0;
        int quoziente = 0;
        int resto = 0;
        int potenza = 0;
        int a = 0;
        int b = 0;
        char confermauscita = 0;
        char invio = 0;

        System.out.println("SUPER CALCOLATRICE DI CALOGERO IN Java");
        System.out.println("Premi un tasto per continuare, oppure premere 'v' per stampare le info di questo eseguibile");
        invio = input.next().charAt(0);

        if (invio == 'v') {
            System.out.println("Versione 1.0");
            System.exit(0);
        } else {
            System.out.println("Inserisci il primo numero");
            a = input.nextInt();
            System.out.println("Inserisci il secondo numero");
            b = input.nextInt();
        }

        if (b == 0) {
            somma = a;
            differenza = a;
            prodotto = 0;
            System.out.println("La somma è: " + somma);
            System.out.println("La differenza è: " + differenza);
            System.out.println("Il prodotto è: " + prodotto);
            System.out.println("La divisione è impossibile");
        } else {
            somma = a + b;
            differenza = a - b;
            prodotto = a * b;
            quoziente = a / b;
            resto = a % b;
            potenza = (int) Math.pow(a, b);
            System.out.println("La somma è: " + somma);
            System.out.println("La differenza è: " + differenza);
            System.out.println("Il prodotto è: " + prodotto);
            System.out.println("Il quoziente è: " + quoziente);
            System.out.println("Il resto della divisione è: " + resto);
            System.out.println("Il risultato della potenza è: " + potenza);

            System.out.print("Uscire? (y/n): ");
            confermauscita = input.next().charAt(0);
            if (confermauscita == 'y' || confermauscita == 'Y') {
                System.exit(0);
            }
        }

        System.out.println("Digitare 'java Calcolatrice' per riavviare il programma");
    }
}

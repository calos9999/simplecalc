package main

import (
	"fmt"
	"math"
)

func main() {
	var somma, differenza, prodotto, quoziente, resto, potenza, a, b int
	var confermauscita, invio byte

	fmt.Println("SUPER CALCOLATRICE DI CALOGERO IN GO")
	fmt.Println("Premi un tasto per continuare, oppure premi 'v' per stampare le info di questo eseguibile")
	fmt.Scanf("%c", &invio)

	if invio == 'v' {
		fmt.Println("Versione 1.0")
		return
	} else {
		fmt.Println("Inserisci il primo numero")
		fmt.Scanf("%d", &a)
		fmt.Println("Inserisci il secondo numero")
		fmt.Scanf("%d", &b)
	}

	if b == 0 {
		somma = a
		differenza = a
		prodotto = 0
		fmt.Println("La somma è:", somma)
		fmt.Println("La differenza è:", differenza)
		fmt.Println("Il prodotto è:", prodotto)
		fmt.Println("La divisione è impossibile")
	} else {
		somma = a + b
		differenza = a - b
		prodotto = a * b
		quoziente = a / b
		resto = a % b
		potenza = int(math.Pow(float64(a), float64(b)))

		fmt.Println("La somma è:", somma)
		fmt.Println("La differenza è:", differenza)
		fmt.Println("Il prodotto è:", prodotto)
		fmt.Println("Il quoziente è:", quoziente)
		fmt.Println("Il resto della divisione è:", resto)
		fmt.Println("Il risultato della potenza è:", potenza)

		fmt.Println("Uscire? (y/n):")
		fmt.Scanf("%c", &confermauscita)
		if confermauscita == 'y' || confermauscita == 'Y' {
			return
		}
		fmt.Println("Digitare ./calc per riavviare il programma")
	}
}

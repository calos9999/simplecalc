import math

print("SUPER CALCOLATRICE DI CALOGERO IN Python")
invio = input("Premi un tasto per continuare, oppure premere 'v' per stampare le info di questo eseguibile: ")

if invio == 'v':
    print("Versione 1.0")
    exit()
else:
    a = int(input("Inserisci il primo numero: "))
    b = int(input("Inserisci il secondo numero: "))

if b == 0:
    somma = a
    differenza = a
    prodotto = 0
    print("La somma è:", somma)
    print("La differenza è:", differenza)
    print("Il prodotto è:", prodotto)
    print("La divisione è impossibile")
else:
    somma = a + b
    differenza = a - b
    prodotto = a * b
    quoziente = a // b
    resto = a % b
    potenza = math.pow(a, b)
    print("La somma è:", somma)
    print("La differenza è:", differenza)
    print("Il prodotto è:", prodotto)
    print("Il quoziente è:", quoziente)
    print("Il resto della divisione è:", resto)
    print("Il risultato della potenza è:", potenza)

confermauscita = input("Uscire? (y/n): ")
if confermauscita.lower() == 'y':
    exit()

print("Digitare 'python nomefile.py' per riavviare il programma")

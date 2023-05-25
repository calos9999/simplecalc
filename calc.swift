import Foundation

func main() {
    var somma = 0
    var differenza = 0
    var prodotto = 0
    var quoziente = 0
    var resto = 0
    var potenza = 0
    var a = 0
    var b = 0
    var confermaUscita: Character = " "
    var invio: Character = " "
    
    print("SUPER CALCOLATRICE DI CALOGERO IN SWIFT")
    print("Premi un tasto per continuare, oppure premi 'v' per stampare le info di questo eseguibile")
    invio = Character(readLine() ?? "")
    
    if invio == "v" {
        print("Versione 1.0")
        return
    } else {
        print("Inserisci il primo numero")
        a = Int(readLine() ?? "") ?? 0
        print("Inserisci il secondo numero")
        b = Int(readLine() ?? "") ?? 0
    }
    
    if b == 0 {
        somma = a
        differenza = a
        prodotto = 0
        print("La somma è: \(somma)")
        print("La differenza è: \(differenza)")
        print("Il prodotto è: \(prodotto)")
        print("La divisione è impossibile")
    } else {
        somma = a + b
        differenza = a - b
        prodotto = a * b
        quoziente = a / b
        resto = a % b
        potenza = Int(pow(Double(a), Double(b)))
        
        print("La somma è: \(somma)")
        print("La differenza è: \(differenza)")
        print("Il prodotto è: \(prodotto)")
        print("Il quoziente è: \(quoziente)")
        print("Il resto della divisione è: \(resto)")
        print("Il risultato della potenza è: \(potenza)")
        
        print("Uscire? (y/n):")
        confermaUscita = Character(readLine() ?? "")
        if confermaUscita == "y" || confermaUscita == "Y" {
            return
        }
        print("Digitare ./calc per riavviare il programma")
    }
}

main()

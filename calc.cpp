#include <iostream>
#include <cmath>
#include <cstdlib>
#include <typeinfo>
using namespace std;
int main () {
    int somma =0;
    int differenza =0;
    int prodotto =0;
    int quoziente =0;
    int resto=0;
	int potenza=0;
    int a=0;
    int b=0;
	char confermauscita=0;
    char invio=0;
    cout << "SUPER CALCOLATRICE DI CALOGERO IN C++" << endl;
    cout << "Premi un tasto per continuare, oppure premere 'v' per stampare le info di questo eseguibile" << endl;
    cin >> invio;
	if (invio=='v'){
		cout << "Versione 1.0";
		cout << endl;
		system("exit");
		return 0;
	} else {
    cout << "Inserisci il primo numero" << endl;
    cin >> a;
    cout << "Inserisci il secondo numero" << endl;
    cin >> b;
	}
    if(b==0) {
        somma=a;
        differenza=a;
        prodotto=0;
        cout << "La somma è: " << somma << endl;
        cout << "La differenza è: " << differenza << endl;
        cout << "Il prodotto è: " << prodotto << endl;
        cout << "La divisione è impossibile" << endl;
    }
    else {
    somma=a+b;
    differenza=a-b;
    prodotto=a*b;
    quoziente=a/b;
    resto=a%b;
	potenza=pow(a,b);
    cout << "La somma è: " << somma << endl;
    cout << "La differenza è: " << differenza << endl;
    cout << "Il prodotto è: " << prodotto << endl;
    cout << "Il quoziente è: " << quoziente << endl;
    cout << "Il resto della divisione è: " << resto << endl;
	cout << "Il risultato della potenza è: " << potenza << endl;
	cout << "Uscire? :";
	cin >> confermauscita;
	if(confermauscita=='y'||'Y'){
		system("exit");
		system("clear");
	}
	cout << "Digitare ./calc per riavviare il programma";
	cout << endl;
    return 0;
    }
}

const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let somma = 0;
let differenza = 0;
let prodotto = 0;
let quoziente = 0;
let resto = 0;
let potenza = 0;
let a = 0;
let b = 0;
let confermauscita = '';
let invio = '';

console.log("SUPER CALCOLATRICE DI CALOGERO IN JavaScript");
rl.question("Premi un tasto per continuare, oppure premere 'v' per stampare le info di questo eseguibile: ", (input) => {
  invio = input;

  if (invio === 'v') {
    console.log("Versione 1.0");
    rl.close();
    return;
  } else {
    rl.question("Inserisci il primo numero: ", (input) => {
      a = parseInt(input);
      rl.question("Inserisci il secondo numero: ", (input) => {
        b = parseInt(input);

        if (b === 0) {
          somma = a;
          differenza = a;
          prodotto = 0;
          console.log("La somma è:", somma);
          console.log("La differenza è:", differenza);
          console.log("Il prodotto è:", prodotto);
          console.log("La divisione è impossibile");
        } else {
          somma = a + b;
          differenza = a - b;
          prodotto = a * b;
          quoziente = Math.floor(a / b);
          resto = a % b;
          potenza = Math.pow(a, b);
          console.log("La somma è:", somma);
          console.log("La differenza è:", differenza);
          console.log("Il prodotto è:", prodotto);
          console.log("Il quoziente è:", quoziente);
          console.log("Il resto della divisione è:", resto);
          console.log("Il risultato della potenza è:", potenza);

          rl.question("Uscire? (y/n): ", (input) => {
            confermauscita = input;
            if (confermauscita === 'y' || confermauscita === 'Y') {
              rl.close();
              return;
            }
          });
        }

        console.log("Digitare 'node nomefile.js' per riavviare il programma");
        rl.close();
      });
    });
  }
});

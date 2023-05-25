puts "SUPER CALCOLATRICE DI CALOGERO IN Ruby"
puts "Premi un tasto per continuare, oppure premere 'v' per stampare le info di questo eseguibile"
invio = gets.chomp

if invio == 'v'
  puts "Versione 1.0"
  exit
else
  puts "Inserisci il primo numero"
  a = gets.chomp.to_i
  puts "Inserisci il secondo numero"
  b = gets.chomp.to_i
end

if b == 0
  somma = a
  differenza = a
  prodotto = 0
  puts "La somma è: #{somma}"
  puts "La differenza è: #{differenza}"
  puts "Il prodotto è: #{prodotto}"
  puts "La divisione è impossibile"
else
  somma = a + b
  differenza = a - b
  prodotto = a * b
  quoziente = a / b
  resto = a % b
  potenza = a**b
  puts "La somma è: #{somma}"
  puts "La differenza è: #{differenza}"
  puts "Il prodotto è: #{prodotto}"
  puts "Il quoziente è: #{quoziente}"
  puts "Il resto della divisione è: #{resto}"
  puts "Il risultato della potenza è: #{potenza}"

  puts "Uscire? (y/n): "
  confermauscita = gets.chomp
  if confermauscita == 'y' || confermauscita == 'Y'
    exit
  end
end

puts "Digitare 'ruby nomefile.rb' per riavviare il programma"

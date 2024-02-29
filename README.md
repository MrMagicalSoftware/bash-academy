# bash-academy


Common Linux Durectiry Names 

/ -> root of the virtual directory , where normally , no files are placed <br>
/bin -> binary directory <br>
/boot -> whre boot are stored<br>
/dev -> device directory , where linux creates device nodes<br>
/etc -> file di configurazione<br>
/home -> dove risiedono le cartelle utenti<br>
/media -><br>
/mnt -><br>
/opt -> optional directory , often used to store 3-party software packages and data files<br>
/proc -> process directory , where current hardware and process information is stored<br>
/root -> root home directory<br>
/sbin<br>
/run -> run directory , where runtime data is held during system operation<br>
/srv -> service directory, where local service store their files<br>
/sys -> system direcoty , <br>
/tmp<br>
/usr<br>
/var  -> variabile directory, for files that change frequently , such as log files<br>


# COMANDI LINUX 


Il comando `file` in Linux viene utilizzato per determinare il tipo di un file. Esamina il contenuto di un file e cerca di identificarne il tipo e altre informazioni correlate. 



```bash
man file
```



```bash
file [opzioni] nomefile
```


1. **Utilizzo di base:**
   ```bash
   file nomefile
   ```
   Questo comando mostra il tipo del file specificato.

2. **Visualizzazione del tipo MIME:**
   ```bash
   file --mime-type nomefile
   ```
   Questo comando mostra il tipo MIME del file specificato.

3. **Visualizzazione di ulteriori informazioni:**
   ```bash
   file -i nomefile
   ```
   Questo comando mostra il tipo MIME insieme a informazioni aggiuntive sul file.

4. **Visualizzazione del tipo di sistema di file:**
   ```bash
   file -s nomefile
   ```
   Questo comando mostra il tipo di file e informazioni aggiuntive, inclusi il tipo di sistema di file.

5. **Modalità ricorsiva:**
   ```bash
   file -r cartellanome
   ```
   Questo comando elabora le directory in modo ricorsivo e mostra informazioni su tutti i file presenti nella cartella specificata.

6. **Visualizzazione delle informazioni sulla versione:**
   ```bash
   file --version
   ```
   Questo comando mostra le informazioni sulla versione del comando `file`.

_______________________________


touch file_name  
gedit file_name.sh 

```bash
#! /bin/bash  
```

## Hello Word in Bash 


```bash
#! /bin/bash  
  
# This is the basic bash script  
  
echo " Hello World! " 
```

chmod +x bash_script.sh   



**Secondo programma**

```bash
    #!/bin/bash  
      
    #This is a single-line comment in Bash Script.  
    echo "Enter your name:"  
    read $name  
    echo  
    #echo output, its also a single line comment  
    echo "The current user name is $name"  
    #This is another single line comment  
```

**Bash Multi Line Comment**


```bash
    #!/bin/bash  
      
    <<COMMENTS  
        This is the first comment  
        This is the second comment  
        This is the third comment  
    COMMENTS  
      
    echo "Hello World"  
```

**Quote with String**

While working with simple texts and string, there will be no differences either we use a single quote or double quote.


```bash
    #!/bin/bash  
      
    # String in single quote  
    echo 'Hello User'  
    echo  
    # String in double quote  
    echo "we are javatpoint"  

```

**Quote with Variable**

It should be noted that the shell variable expansion will only work with double-quotes. If you define any variable in single quotes, then it will not be considered as a variable. Let's understand this with an example:

```bash

    #!/bin/bash  
      
    name="You are welcome at javatpoint"  
      
    echo "$name"  
    echo '$name'  
```


**Esempio**




```bash
**Utilizzo di variabili in operazioni aritmetiche**
numero1=10
numero2=5
somma=$((numero1 + numero2))
prodotto=$((numero1 * numero2))

echo "La somma di $numero1 e $numero2 è $somma"
echo "Il prodotto di $numero1 e $numero2 è $prodotto"

```


# tipi di dato






In Bash, i tipi di dati principali sono:

1. **Stringhe (Strings):**
   Le stringhe rappresentano sequenze di caratteri. Possono essere dichiarate tra apici singoli (`'`) o doppi (`"`).

   ```bash
   stringa_singola='Questo è un esempio'
   stringa_doppia="Un'altra stringa"
   ```

2. **Numeri interi (Integers):**
   Bash tratta i numeri senza decimali come interi. Non c'è bisogno di dichiarare il tipo.

   ```bash
   numero_intero=42
   ```

3. **Numeri decimali (Floating Point):**
   Bash supporta anche numeri con decimali, ma le operazioni aritmetiche possono richiedere uno strumento come `bc`.

   ```bash
   numero_decimale=3.14
   ```

4. **Array:**
   Gli array contengono una raccolta di elementi, e gli indici degli array iniziano solitamente da 0.

   ```bash
   nomi=("Alice" "Bob" "Charlie")
   echo ${nomi[0]}  # Stampa il primo elemento dell'array
   ```

5. **Booleani:**
   Bash non ha un tipo di dato booleano nativo. Tuttavia, spesso le condizioni sono gestite usando comandi di confronto come `[[ ]]` o `test`.

   ```bash
   vero=true
   falso=false
   ```

6. **Variabili nulle (Null):**
   In bash, una variabile non inizializzata o senza valore assegnato è considerata come nullo.

   ```bash
   variabile_nulla=
   ```

7. **Variabili Lettre (Literal):**
   Bash considera qualsiasi sequenza di caratteri come letterale, e puoi assegnare valori arbitrari alle variabili.

   ```bash
   valore_letterale="Questo è un valore letterale"
   ```

**system defined variables**


In Bash, ci sono alcune variabili predefinite di sistema, spesso chiamate "system-defined variables" o "variables predefinite del sistema". 

Per visualizzare tutte le variabili attive  `env` o `set`.


1. **$HOME:**
   Rappresenta il percorso della directory home dell'utente corrente.

   ```bash
   echo $HOME
   ```

2. **$USER o $LOGNAME:**
   Contiene il nome dell'utente corrente.

   ```bash
   echo $USER
   ```

3. **$PATH:**
   Specifica una lista di directory in cui il sistema cerca i comandi eseguibili.

   ```bash
   echo $PATH
   ```

4. **$PWD:**
   Rappresenta il percorso corrente (working directory).

   ```bash
   echo $PWD
   ```

5. **$SHELL:**
   Contiene il percorso dell'interprete della shell corrente.

   ```bash
   echo $SHELL
   ```

6. **$BASH_VERSION:**
   Mostra la versione di Bash in uso.

   ```bash
   echo $BASH_VERSION
   ```

7. **$RANDOM:**
   Genera un numero casuale.

   ```bash
   echo $RANDOM
   ```

8. **$UID:**
   Rappresenta l'ID dell'utente corrente.

   ```bash
   echo $UID
   ```

9. **$PPID:**
   Contiene l'ID del processo padre del processo corrente.

   ```bash
   echo $PPID
   ```

10. **$? (Exit Status):**
    Restituisce lo stato di uscita dell'ultimo comando eseguito. Un valore di 0 indica successo.

    ```bash
    echo $?
    ```


```bash
#! /bin/bash  
   # Bash System-defined Variables  
   echo $HOME # Home Directory  
   echo $PWD # current working directory  
   echo $BASH # Bash shell name  
   echo $BASH_VERSION # Bash shell Version  
   echo $LOGNAME # Name of the Login User  
   echo $OSTYPE # Type of OS 
```

_________________________________


**esempio con read**

```bash
#!/bin/bash

# Chiedi all'utente di inserire un testo
echo "Inserisci il tuo nome:"
read nome

# Stampa il nome inserito
echo "Ciao, $nome! Benvenuto."

# Chiedi all'utente di inserire un numero
echo "Inserisci un numero:"
read numero

# Esegui un'operazione con il numero inserito
doppio=$((numero * 2))

# Stampa il risultato
echo "Il doppio di $numero è $doppio."
```



_______________________________________________


In Bash, il comando `date` viene utilizzato per visualizzare o manipolare la data e l'orario del sistema. Può essere utilizzato per ottenere la data corrente, formattarla in modi diversi o impostare una data specifica. 

### Visualizzare la data e l'orario correnti:
```bash
#!/bin/bash

current_date=$(date)
echo "Data e orario correnti: $current_date"
```

### Formattare la data:
```bash
#!/bin/bash

# Formato personalizzato
formatted_date=$(date +"%Y-%m-%d %H:%M:%S")
echo "Data formattata: $formatted_date"
```

Alcuni dei formati di data e ora più comuni sono:
- `%Y`: Anno a 4 cifre
- `%m`: Mese (01-12)
- `%d`: Giorno del mese (01-31)
- `%H`: Ore (00-23)
- `%M`: Minuti (00-59)
- `%S`: Secondi (00-59)

### Impostare una data specifica:
```bash
#!/bin/bash

# Impostare una data specifica (2022-01-01 12:00:00)
specific_date=$(date -d "2022-01-01 12:00:00" +"%Y-%m-%d %H:%M:%S")
echo "Data specifica: $specific_date"
```

### Calcolare la differenza tra due date:
```bash
#!/bin/bash

# Data attuale
current_date=$(date +%s)

# Data futura (ad esempio, 7 giorni dopo)
future_date=$(date -d "7 days" +%s)

# Calcola la differenza
difference=$((future_date - current_date))
days=$((difference / 86400))  # 86400 secondi in un giorno

echo "La differenza è di $days giorni."
```

____________________

**Bash Sleep**


sleep 5: sospende l'esecuzione per 5 secondi.
sleep 1m: sospende l'esecuzione per 1 minuto.
sleep 2h: sospende l'esecuzione per 2 ore.

```bash

#!/bin/bash

echo "Questo è il punto A"
sleep 5  # Sospende l'esecuzione per 5 secondi
echo "Cinque secondi dopo, questo è il punto B"
```

____________________________________________________

# Bash Arithmetic Operators

In Bash, puoi eseguire operazioni aritmetiche utilizzando diversi operatori. Ecco alcuni degli operatori aritmetici comuni:

1. **Addizione `+`:**
   ```bash
   risultato=$((5 + 3))
   echo $risultato  # Output: 8
   ```

2. **Sottrazione `-`:**
   ```bash
   risultato=$((10 - 4))
   echo $risultato  # Output: 6
   ```

3. **Moltiplicazione `*`:**
   ```bash
   risultato=$((3 * 7))
   echo $risultato  # Output: 21
   ```

4. **Divisione `/`:**
   ```bash
   risultato=$((20 / 4))
   echo $risultato  # Output: 5
   ```

5. **Modulo `%` (Resto della divisione):**
   ```bash
   risultato=$((15 % 4))
   echo $risultato  # Output: 3
   ```

6. **Incremento `++`:**
   ```bash
   numero=5
   ((numero++))
   echo $numero  # Output: 6
   ```

7. **Decremento `--`:**
   ```bash
   numero=8
   ((numero--))
   echo $numero  # Output: 7
   ```

8. **Assegnazione combinata `+=`, `-=`, `*=`, `/=`:**
   ```bash
   valore=10
   ((valore += 5))
   echo $valore  # Output: 15
   ```

9. **Espressioni aritmetiche con `$((...))`:**
   Puoi utilizzare questa sintassi per eseguire espressioni aritmetiche più complesse:
   ```bash
   risultato=$(( (10 + 5) * 2 - 4 ))
   echo $risultato  # Output: 22
   ```

__________________________________________________


# Bash string 



In Bash, le stringhe sono una sequenza di caratteri e possono essere assegnate utilizzando singoli apici (`'`) o doppi apici (`"`).



### Assegnare una stringa:
```bash
stringa_singola='Questo è un esempio con apici singoli.'
stringa_doppia="Questo è un esempio con apici doppi."
```

### Concatenare stringhe:
```bash
nome="John"
cognome="Doe"
nome_completo="$nome $cognome"
echo $nome_completo  # Output: John Doe
```

### Lunghezza di una stringa:
```bash
stringa="Hello, World!"
lunghezza=${#stringa}
echo $lunghezza  # Output: 13
```

### Estrai sottostringa:
```bash
stringa="Hello, World!"
sottostringa=${stringa:0:5}
echo $sottostringa  # Output: Hello
```

### Concatenare stringhe con operatore `+=`:
```bash
saluto="Ciao, "
nome="Alice"
saluto_completo=$saluto$nome
echo $saluto_completo  # Output: Ciao, Alice
```

### Sostituire parte di una stringa:
```bash
frase="I love programming in Java."
nuova_frase=${frase/Java/Bash}
echo $nuova_frase  # Output: I love programming in Bash.
```

### Uppercase e lowercase:
```bash
testo="Hello World"
testo_maiuscolo=${testo^^}
testo_minuscolo=${testo,,}
echo $testo_maiuscolo  # Output: HELLO WORLD
echo $testo_minuscolo  # Output: hello world
```





### Divisione di una Stringa:
Usa la variabile `IFS` (Internal Field Separator) insieme al comando `read` per dividere una stringa in un array:

```bash
stringa="Ciao,Mondo,Come,Stai"
IFS=',' read -ra array <<< "$stringa"

# Stampa ogni elemento dell'array
for elemento in "${array[@]}"; do
    echo $elemento
done
```


### Ricerca di Sottostringa:
usa la costruzione `[[ ... ]]` insieme al carattere jolly `*` per verificare se una stringa contiene una sottostringa:

```bash
stringa="Ciao, Mondo!"
sottostringa="Mondo"

if [[ $stringa == *$sottostringa* ]]; then
    echo "La stringa contiene la sottostringa."
else
    echo "La stringa non contiene la sottostringa."
fi
```

### Estrazione di Sottostringa:

```bash
stringa="Buongiorno, Mondo!"
sottostringa=${stringa:12:5}

echo $sottostringa  # Output: Mondo
```

la sottostringa viene estratta dalla posizione 12, con una lunghezza di 5 caratteri.



# If statements



1. **Uguaglianza (`==`):**
   ```bash
   numero1=10
   numero2=20

   if [ $numero1 == $numero2 ]; then
       echo "I numeri sono uguali."
   else
       echo "I numeri non sono uguali."
   fi
   ```

2. **Diversità (`!=`):**
   ```bash
   stringa1="Hello"
   stringa2="World"

   if [ "$stringa1" != "$stringa2" ]; then
       echo "Le stringhe sono diverse."
   else
       echo "Le stringhe sono uguali."
   fi
   ```

3. **Maggiore (`-gt`):**
   ```bash
   numero1=30
   numero2=20

   if [ $numero1 -gt $numero2 ]; then
       echo "Il primo numero è maggiore del secondo."
   else
       echo "Il primo numero non è maggiore del secondo."
   fi
   ```

4. **Minore (`-lt`):**
   ```bash
   numero1=15
   numero2=25

   if [ $numero1 -lt $numero2 ]; then
       echo "Il primo numero è minore del secondo."
   else
       echo "Il primo numero non è minore del secondo."
   fi
   ```

5. **Maggiore o Uguale (`-ge`):**
   ```bash
   numero1=20
   numero2=20

   if [ $numero1 -ge $numero2 ]; then
       echo "Il primo numero è maggiore o uguale al secondo."
   else
       echo "Il primo numero non è maggiore o uguale al secondo."
   fi
   ```

6. **Minore o Uguale (`-le`):**
   ```bash
   numero1=25
   numero2=30

   if [ $numero1 -le $numero2 ]; then
       echo "Il primo numero è minore o uguale al secondo."
   else
       echo "Il primo numero non è minore o uguale al secondo."
   fi
   ```

In Bash, puoi utilizzare operatori logici per combinare o valutare condizioni in modo più complesso. Ecco alcuni degli operatori logici più comuni:

### AND (`&&`):
```bash
#!/bin/bash

numero=15

if [ $numero -gt 10 ] && [ $numero -lt 20 ]; then
    echo "Il numero è maggiore di 10 e minore di 20."
else
    echo "Il numero non soddisfa la condizione."
fi
```


### OR (`||`):
```bash
#!/bin/bash

giorno="Lunedì"

if [ "$giorno" == "Sabato" ] || [ "$giorno" == "Domenica" ]; then
    echo "È un giorno del fine settimana."
else
    echo "Non è un giorno del fine settimana."
fi
```

Il blocco di codice nell'istruzione `if` verrà eseguito se la variabile `$giorno` è uguale a "Sabato" o "Domenica".

### NOT (`!`):
```bash
#!/bin/bash

flag=true

if ! $flag; then
    echo "La variabile flag è falsa."
else
    echo "La variabile flag è vera."
fi
```


### Esempio combinato:
```bash
#!/bin/bash

numero=25

if [ $numero -lt 10 ] || [ $numero -gt 20 ]; then
    echo "Il numero è minore di 10 o maggiore di 20."
else
    echo "Il numero non soddisfa la condizione."
fi
```




















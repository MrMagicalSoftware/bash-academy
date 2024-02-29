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












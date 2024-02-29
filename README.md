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






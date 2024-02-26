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

Questi sono solo alcuni esempi, e ci sono molte altre opzioni disponibili. Puoi consultare la pagina di manuale per il comando `file` per ottenere una lista completa delle opzioni e ulteriori dettagli:






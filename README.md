🇮🇹 [Italiano](#italiano) | 🇬🇧 [English](#english)

# SQL Inglese

<a id="italiano"></a>

## 🇮🇹 Italiano

### 📌 Descrizione
Raccolta di piccoli esercizi di **SQL (MySQL)** della materia scolastica di **Inglese**. Gli esercizi partono da un semplice "Hello, World!" e arrivano all'uso dei comandi più comuni (creazione di tabelle, inserimento, query, join, funzioni di aggregazione, ecc.). L'ultimo esercizio è commentato in inglese e spiega brevemente ogni comando usato.

### 📂 Contenuto

| File | Descrizione |
|------|-------------|
| `Es. 1 (Hello, World!).sql` | Una semplice `SELECT` che restituisce la stringa "Hello, World!". |
| `Es. 2 (creazione e modifica di una tabella di esempio).sql` | Crea un database e una tabella `users`, aggiunge la colonna `nome` e rimuove la colonna `placeholder` con `ALTER TABLE`, mostra la tabella (vuota) con `SELECT *` e infine elimina il database. |
| `Es. 3 (utilizzo dei comandi principali).sql` | Crea il database di un piccolo negozio con le tabelle `products` e `orders` (collegate da una chiave esterna) e mostra, con commenti in inglese, i comandi principali: `INSERT`, `SELECT`, `WHERE`, `ORDER BY`, `INNER JOIN`, `GROUP BY`/`HAVING`, `COUNT`/`AVG`/`MAX`/`MIN`/`SUM`, `DISTINCT`, `LIKE`, `BETWEEN`, `IN`, `LIMIT`, `UPDATE`, `ALTER TABLE`, `DELETE`, `DROP`. |
| `.gitattributes` | Fa riconoscere a GitHub i file `.sql` come linguaggio SQL. |
| `.gitignore` | Esclude file locali (file `.env`, impostazioni dell'editor, file di sistema, file temporanei, database locali, log). |

### 🛠️ Tecnologie
- **SQL**, nel dialetto **MySQL** (es. `AUTO_INCREMENT`, nomi tra backtick).

### ▶️ Come eseguire gli esercizi
1. Avvia un server **MySQL** (o compatibile, es. MariaDB) in locale.
2. Apri il file `.sql` in un client SQL (ad esempio MySQL Workbench o un'estensione database per VS Code) ed eseguilo, oppure da terminale (Bash o Prompt dei comandi; in PowerShell l'operatore `<` non è supportato):
   ```bash
   mysql -u <utente> -p < "Es. 2 (creazione e modifica di una tabella di esempio).sql"
   ```

**Note:**
- Gli esercizi 2 e 3 terminano con `DROP DATABASE`, quindi il database creato viene eliminato alla fine dell'esecuzione.
- Nell'esercizio 3 l'istruzione `DELETE FROM products WHERE price<30` prova a eliminare il prodotto "Mouse", che è ancora collegato a un ordine: con la chiave esterna attiva (motore InnoDB, predefinito in MySQL) il server restituisce un errore. Il client `mysql` da terminale si ferma a quel punto e il database non viene eliminato; per eseguire comunque tutto il file si può usare `mysql --force`. Se il database `Matteo's_shop` è rimasto da un'esecuzione precedente, va eliminato prima di rieseguire l'esercizio.
- La prima riga di ogni file (`-- Active: ...`) è solo un commento lasciato dall'editor con i dati della connessione locale.

### 📋 Requisiti
- Un server MySQL (o MariaDB) e un client per eseguire le query.

### 👤 Autore
[MatteoMgr2008](https://github.com/MatteoMgr2008)

---

<a id="english"></a>

## 🇬🇧 English

### 📌 Description
A collection of small **SQL (MySQL)** exercises for the **English** school subject. The exercises go from a simple "Hello, World!" up to the most common commands (creating tables, inserting data, queries, joins, aggregate functions, etc.). The last exercise is commented in English and briefly explains each command it uses.

### 📂 Contents

| File | Description |
|------|-------------|
| `Es. 1 (Hello, World!).sql` | A simple `SELECT` that returns the string "Hello, World!". |
| `Es. 2 (creazione e modifica di una tabella di esempio).sql` | Creates a database and a `users` table, adds the `nome` column and removes the `placeholder` column with `ALTER TABLE`, shows the (empty) table with `SELECT *` and finally drops the database. |
| `Es. 3 (utilizzo dei comandi principali).sql` | Creates a small shop database with `products` and `orders` tables (linked by a foreign key) and demonstrates, with English comments, the main commands: `INSERT`, `SELECT`, `WHERE`, `ORDER BY`, `INNER JOIN`, `GROUP BY`/`HAVING`, `COUNT`/`AVG`/`MAX`/`MIN`/`SUM`, `DISTINCT`, `LIKE`, `BETWEEN`, `IN`, `LIMIT`, `UPDATE`, `ALTER TABLE`, `DELETE`, `DROP`. |
| `.gitattributes` | Makes GitHub detect the `.sql` files as SQL. |
| `.gitignore` | Excludes local files (`.env` files, editor settings, OS files, temporary files, local databases, logs). |

### 🛠️ Technologies
- **SQL**, in the **MySQL** dialect (e.g. `AUTO_INCREMENT`, backtick-quoted names).

### ▶️ How to run the exercises
1. Start a local **MySQL** server (or a compatible one, e.g. MariaDB).
2. Open the `.sql` file in a SQL client (for example MySQL Workbench or a database extension for VS Code) and run it, or from a terminal (Bash or Command Prompt; PowerShell does not support the `<` operator):
   ```bash
   mysql -u <user> -p < "Es. 2 (creazione e modifica di una tabella di esempio).sql"
   ```

**Notes:**
- Exercises 2 and 3 end with `DROP DATABASE`, so the database they create is deleted at the end of the run.
- In exercise 3, the statement `DELETE FROM products WHERE price<30` tries to delete the "Mouse" product, which is still referenced by an order: with the foreign key enforced (InnoDB engine, the MySQL default) the server returns an error. The `mysql` command-line client stops there and the database is not dropped; to run the whole file anyway you can use `mysql --force`. If the `Matteo's_shop` database is left over from a previous run, drop it before running the exercise again.
- The first line of each file (`-- Active: ...`) is just a comment left by the editor with the local connection details.

### 📋 Requirements
- A MySQL (or MariaDB) server and a client to run the queries.

### 👤 Author
[MatteoMgr2008](https://github.com/MatteoMgr2008)

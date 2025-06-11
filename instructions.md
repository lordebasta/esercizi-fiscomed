# Esercizi-Fiscomed
In questa repository troverai gli esercizi della seconda fase di valutazione per la tua candidatura in Fiscomed ☺️

# 1. Task Manager API in Ruby on Rails

## Panoramica
Vorremmo che tu realizzassi una piccola applicazione Ruby on Rails che funzioni come una **Task Manager API**. Ogni task ha un **titolo**, una **descrizione** e un campo booleano per indicare se è stato **completato**.
Questo esercizio serve a dimostrare la tua competenza in **Ruby on Rails**, design di API **RESTful**, testing e qualità del codice nel suo complesso.

Avrai a disposizione 5 giorni per completare l’esercizio. Una volta terminato, inviaci il link a un repository pubblico (GitHub, GitLab, ecc.) contenente il tuo codice e con le istruzioni necessarie per eseguire l’applicazione in locale.

---

## Requisiti Principali

1. **Ruby on Rails**
   - Utilizza una versione recente e stabile di Ruby e Rails.

2. **Database**
   - Usa PostgreSQL (preferito) o un altro database relazionale comunemente in uso.

3. **Modello: `Task`**
   - **title** (string) – obbligatorio
   - **description** (text o string) – opzionale o a tua discrezione
   - **completed** (boolean) – di default `false`

4. **Endpoints (API basata su JSON)**
   - **Creare** un nuovo task
   - **Leggere** un singolo task tramite ID
   - **Aggiornare** un task esistente
   - **Eliminare** un task
   - **Elencare** tutti i task
     - Opzionale: implementa paginazione o filtraggio di base (ad esempio per lo stato `completed`)

5. **Validazioni e Gestione degli Errori**
   - Applica validazioni appropriate (es.: `title` obbligatorio).
   - Restituisci codici di stato HTTP significativi e messaggi di errore in formato JSON.

6. **Testing**
   - Includi una suite di test.
   - Copri i test sia per i tuoi model sia per gli endpoint API.
   - Concentrati su un approccio chiaro al testing piuttosto che sulla copertura totale.

7. **Documentazione**
   - Fornisci istruzioni per l’installazione e l’avvio in un file `README.md` (come installare le dipendenze, configurare il database, eseguire le migrazioni, avviare il server, ecc.).
   - Documenta gli endpoint dell’API (una breve descrizione di ciascuno, formati di richiesta/risposta, ecc.).

---

## Bonus (Opzionale)
- **Ricerca/Filtraggio**: Implementa funzionalità di ricerca o filtraggio avanzato (p.es. filtrare per stato `completed`, ricerca testuale nel `title`, ecc.).
- **Deploy**: Effettua il deploy dell’applicazione su un server a tua scelta (ad es. AWS, Heroku, ecc.) in modo che sia accessibile pubblicamente.
- **Docker**: Fornisci configurazioni Docker (`Dockerfile`, `docker-compose.yml`) per semplificare il setup.
- **Autenticazione**: Implementa un sistema di autenticazione (basato su token o sessione) se desideri associare le task a utenti specifici.
- **Funzionalità Avanzate**: Aggiungi campi extra o relazioni (ad es. tag, date di scadenza, assegnazioni a utenti) per mostrare maggiore complessità.

---

## Cosa Valuteremo
- **Organizzazione & Qualità del Codice**: Come strutturi l’applicazione, segui le convenzioni di Rails e separi le responsabilità.
- **Principi RESTful**: Uso coerente di endpoint, metodi HTTP e codici di stato.
- **Approccio al Testing**: Copertura delle funzionalità essenziali e dei casi di errore, chiarezza del codice di test.
- **Documentazione & Chiarezza**: Un `README.md` ben fatto e documentazione chiara dell’API.
- **Manutenibilità**: Codice leggibile, ben organizzato e aderente alle best practice.

---

## Consegna & Modalità di Invio
1. **Repository Pubblico**: Inserisci il tuo progetto su GitHub, GitLab o piattaforme simili.
2. **README**: Assicurati di includere tutte le istruzioni necessarie (installazione dipendenze, configurazione del DB, migrazioni, esecuzione dei test, avvio del server, ecc.).
3. **Note Aggiuntive**: Se hai realizzato funzionalità bonus o preso decisioni di design particolari, sentiti libero di spiegarle.

**Tempistiche**: Non ci aspettiamo che tu spenda più di qualche giorno per questo esercizio. Concentrati su una soluzione semplice e ben strutturata anziché su un prodotto completo in stile production.

---

# 2. Task Manager in React

## Panoramica
Vorremmo che tu realizzassi una **Task Manager Application** utilizzando **React**. In questa versione di base, i dati (le task) non saranno memorizzati in un database o gestiti da un’API esterna, ma per semplicità **salvati in LocalStorage**.
L’obiettivo è comunque dimostrare la tua conoscenza di React, la gestione dello stato e la creazione di un’interfaccia utente semplice e funzionale.

Avrai a disposizione 5 giorni per completare l’esercizio. Una volta terminato, inviaci il link a un repository pubblico (GitHub, GitLab, ecc.) contenente il tuo codice front-end, corredato delle istruzioni necessarie per eseguire l’applicazione in locale.

---

## Requisiti Principali

1. **Framework/Libreria**
   - Utilizza **React** (preferibilmente una versione recente).
   - Puoi utilizzare strumenti come **Create React App**, **Next.js** o un setup personalizzato, purché la configurazione sia chiara.

2. **Funzionalità di Base (con LocalStorage)**
   - **Lista dei Task**: Visualizza l’elenco di tutti i task, letti da LocalStorage.
   - **Creazione di un Task**: Consenti all’utente di creare un nuovo task (titolo, descrizione, e campo “completed” opzionale) e salvalo in LocalStorage.
   - **Modifica di un Task**: Permetti di modificare i dati di un task (almeno il titolo e lo stato “completed”) e aggiorna LocalStorage di conseguenza.
   - **Cancellazione di un Task**: Offri la possibilità di eliminare un task da LocalStorage.
   - **Persistenza**: Assicurati che la lista e lo stato dei task persistano anche dopo il refresh della pagina grazie a LocalStorage.

3. **Struttura del Progetto**
   - Organizza i componenti React in modo chiaro e logico (cartella componenti, eventuali utility per l’accesso a LocalStorage, ecc.).
   - Mantieni un design **responsivo** o almeno **usabile** su varie dimensioni di schermo (non sono richieste grafiche elaborate, ma una base di stile e usabilità sì).

4. **Gestione Stato e Routing (Opzionale ma Consigliato)**
   - Puoi usare **React Router** per gestire più sezioni o “view” (lista, form di creazione/modifica, ecc.).
   - Puoi usare **React Context**, **Redux** o altre librerie per la gestione dello stato, se lo ritieni opportuno.

5. **Documentazione**
   - Includi nel tuo `README.md` le istruzioni per:
     - Installare le dipendenze.
     - Avviare l’applicazione.
     - Qualsiasi configurazione specifica (se necessaria).
   - Spiega chiaramente come viene gestito il salvataggio/aggiornamento dei dati con LocalStorage.

6. **Testing (Opzionale ma Ben Visto)**
   - Se hai dimestichezza con framework di testing (ad es. **Jest**, **React Testing Library**), includi test di base per i componenti principali o i flussi critici (creazione task, modifica, cancellazione, ecc.).

---

## Bonus (Opzionale)
- **Integrazione con API**: Sostituisci l’uso di LocalStorage con una vera API (l’API Rails del precedente esercizio). In questo caso, utilizza le relative chiamate HTTP (GET, POST, PATCH/PUT, DELETE) e gestisci gli errori e le risposte in modo significativo.
- **Ricerca/Filtraggio**: Implementa una barra di ricerca o un filtro per stato “completed”.
- **Gestione Avanzata degli Errori**: Mostra notifiche o alert in modo chiaro quando si verificano errori (ad es. problemi di scrittura in LocalStorage, validazioni mancate, ecc.).
- **Stile e UI**: Aggiungi un tocco di design, magari con **CSS Modules**, **Styled Components** o **Tailwind CSS**.
- **Docker**: Fornisci un Dockerfile o un file `docker-compose.yml` per eseguire facilmente il front-end.
- **Deploy**: Effettua il deploy della tua app React su una piattaforma a tua scelta in modo che sia pubblicamente accessibile.

---

## Cosa Valuteremo
- **Organizzazione del Codice**: Struttura dei componenti, eventuali servizi/utility, chiarezza del progetto.
- **Chiarezza e Manutenibilità**: Leggibilità del codice, uso di buone pratiche React, separazione delle responsabilità, ecc.
- **Funzionalità e UX**: L’applicazione consente di creare, visualizzare, modificare e cancellare le task in maniera intuitiva?
- **Persistenza con LocalStorage**: L’uso di LocalStorage è ben implementato e comprensibile? I dati permangono tra i refresh della pagina?
- **Documentazione**: Completezza e chiarezza delle istruzioni nel `README.md`.

---

## Consegna & Modalità di Invio
1. **Repository Pubblico**: Inserisci il tuo progetto su GitHub, GitLab o altre piattaforme simili.
2. **README**: Includi tutte le istruzioni necessarie per installare ed eseguire l’applicazione.
3. **Note Aggiuntive**: Indica eventuali funzionalità bonus, scelte di design o librerie particolari che hai utilizzato.

**Tempistiche**: Non ci aspettiamo che tu spenda più di qualche giorno per questo esercizio. Il focus è su una soluzione chiara e ben strutturata, non su un prodotto completo per l’ambiente di produzione.

---

**Grazie per il tuo tempo e il tuo impegno. Non vediamo l’ora di esaminare il tuo lavoro.**

# Progetto-Citibike-3

# Gestione e analisi di grandi quantità di dati forniti da CitibBikeNYC tramite l'utilizzo di Excel, SQL (postgreSQL), Visual Studio (Python) e Microsoft Power BI

ENG: Management and analysis of large amounts of data provided by CitiBikeNYC using Excel, SQL (PostgreSQL), Visual Studio (Python) and Microsoft Power BI.



1) Sono stati ottenuti dati sul noleggio di biciclette elettriche e non dal sito di citibikenyc, dal seguente link: https://citibikenyc.com/system-data.
il file zip ->  JC-202407-citibike-tripdata.csv.zip	8 agosto 2024, 17:40:05
che comprende:

- ID corsa
- Tipo cavalcabile
- Iniziato a
- Terminato alle
- Nome della stazione di partenza
- ID stazione di partenza
- Nome della stazione di arrivo
- ID stazione finale
- Latitudine di partenza
- Longitudine iniziale
- Latitudine finale
- Longitudine finale
- Membro o passeggero occasionale

L'obbiettivo del progetto è quello di mostrare all'azienda, tramite grafici, quale tipologia di bicicletta fornita è utilizzata per più tempo (anche in base alla membership o meno).

2) File aperto e controllato tramite Excel, per analizzare il contenuto (112444 righe) e verificare se ci sono eventuali elemeti da "pulire" prima di effetuare i calcoli. File nominato: "FileDiPartenza.csv" in questo progetto.

3) Viene creato un database con postgreSQL e importo i dati al suo interno. File nominato: "CreazioneDatabase.sql".

4) Tramite query in SQL vengono realizzate nuove tabelle che raggruppano dati sulla tipologia dei mezzi di trasporto utilizzati, sul tipo di utente che utilizza il servizio (membro o no), sulla durata dei viaggi e nei giorni in cui viene effettuato il viaggio. Successivamente i dati vengono elaborati su Visual Studio tramite il linguaggio Python e altre query SQL all'interno di PostgreSQL.
File che fa riferimento a questo processo:
StatisticheSullaDurata.sql
CreazioneTabella_DurataViaggi.sql

5) In fine sono stati creati grafici che mostrano:
- "TipologiaDiBici.png" -> paragone tra tempo di utilizzo (in minuti) delle due tipologie di biciclette fornite dall'azienda.
- "TipoDiBiciConMembership.png" -> paragone tra tempo di utilizzo delle due tipologie di biciclette; con legenda che indica le tempistiche di utilizzo di utenti membri o utenti casuali.
- "TortaTempoTrascorsoPerTipologiaBici.png" -> diagramma a torta che mostra tempo di utilizzo (in minuti) delle due tipologie di biciclette (con percentuali delle fette).
- "GraficoAdArea_AndamentoUtilizzoPerMembership.png" -> grafico ad area che mostra l'andamento dell'utilizzo giornaliero dei mezzi di trasporto da parte dei membri o utenti casuali.
- "TortaUtilizzoGiornoPerGiorno_ConTipologiaBici.png" -> grafico a torta che indica quanto influisce ogni singolo viaggio sul totale di tempistiche aziendali (totale viaggi in minuti).
- "MappaDelleStazioni.png" -> la mappa di New York con la posizione di tutte le stazioni.
- "TutteLeStazioniTorta.png" -> grafico a torta che mostra la distrubuzione di tutti gli utilizzi di tutte le stazione nell'arco di tempo dell'analisi.

Il risultato finale mostra un rapporto quasi egualitario tra bicicletta elettrica e classica (con una leggera propensione per l'elettrica). Ma non solo, notiamo anche un dato molto curioso: le biciclette elettriche vengono utilizzate maggiormente da clienti che non sono membri affiliati dell'azienda; mentre quelle classiche maggiormente da clienti membri.


// ENGLISH VERION

Data on electric and regular bike rentals were obtained from the Citi Bike NYC website, available at the following link: https://citibikenyc.com/system-data.
The ZIP file → JC-202407-citibike-tripdata.csv.zip (dated August 8, 2024, 17:40:05) 
includes the following information:

- Ride ID
- Rideable type
- Started at
- Ended at
- Start station name
- Start station ID
- End station name
- End station ID
- Start latitude
- Start longitude
- End latitude
- End longitude
- Member or casual rider

The goal of the project is to show the company, through charts, which type of bicycle is used for a longer duration (also analyzing the difference between members and casual riders).

2) The file was opened and checked using Excel to analyze its contents (112,444 rows) and verify whether any elements needed cleaning before performing calculations.
The file was named "FileDiPartenza.csv" for this project.

3) A database was created using PostgreSQL, and the data were imported into it.
The script file for this step is named "CreazioneDatabase.sql".

4) Using SQL queries, new tables were created to group data based on: the type of vehicle used, the type of user (member or casual), trip duration and the days on which trips were made.
Subsequently, the data were processed in Visual Studio using the Python programming language and additional SQL queries within PostgreSQL.
The files related to this process are:
- StatisticheSullaDurata.sql
- CreazioneTabella_DurataViaggi.sql

5) Several charts were created to visualize the results:

- "TipologiaDiBici.png" → comparison of total usage time (in minutes) between the two types of bicycles provided by the company.
- "TipoDiBiciConMembership.png" → comparison of bicycle usage time by type, including a legend indicating the usage times for members vs. casual users.
- "TortaTempoTrascorsoPerTipologiaBici.png" → pie chart showing the total usage time (in minutes) for each type of bicycle, with percentage labels.
- "GraficoAdArea_AndamentoUtilizzoPerMembership.png" → area chart showing the daily usage trends of bikes by members and casual users.
- "TortaUtilizzoGiornoPerGiorno_ConTipologiaBici.png" → pie chart showing how each individual trip contributes to the company’s total usage time (total trip minutes).
- "MappaDelleStazioni.png" → map of New York showing the locations of all bike stations.
- "TutteLeStazioniTorta.png" → pie chart displaying the distribution of all station usages during the analyzed period.

The final results show an almost equal usage between electric and classic bicycles (with a slight preference for electric ones).
Interestingly, the data also reveal that electric bikes are more frequently used by non-member (casual) riders, whereas classic bikes are more commonly used by members.

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

4) Tramite query in SQL creiamo una view contenente i dati dei giorni della settimana in cui vengono effettuati gli spostamenti e le fasce orarie. Le fasce orarie sono state divise in: Notte (00-05); Mattina (06-11); Pomeriggio (12-17); Sera (18-23). Successivamente i dati vengono elaborati su Visual Studio tramite il linguaggio Python e altre query SQL all'interno di PostgreSQL.
File che fa riferimento a questo processo:
ViaggioSettimanale_ConFasciaOraria.sql

5) In fine sono stati creati grafici che mostrano:
- "BarreInPila_GiornoDellaSettimana_FasciaOraria.png" -> raggruppamento in pila degli utilizzi nelle fasce orarie con legenda che mostra il colore di ogni giorno.
- "BarreRaggruppate_GiornoDellaSettimana_FasciaOraria.png" -> raggruppamento per fascia oraria di tutti i viaggi effettuati in un giorno della settimana.
- "GraficoLinee_AndamentoOrario.png" -> mostra in modo chiaro l'andamento dei giorni della settimana durante le fasce orarie dall'apice al punto minimo.
- "Torta_FasciaOrariaUtilizzo.png" -> mostra la distribuzione delle fasce orarie di tutti i viaggi effettuati con i mezzi della società.
- "MappaDelleStazioni.png" -> la mappa di New York con la posizione di tutte le stazioni.
- "TutteLeStazioniTorta.png" -> grafico a torta che mostra la distrubuzione di tutti gli utilizzi di tutte le stazione nell'arco di tempo dell'analisi.

Il risultato finale mostra equilibrio durante l'arco della giornata (con un leggero aumento a favore del pomeriggio) e un netto calo durante 5 ore notturne che vanno da mezzanotte alle 5 di mattina. Molto curioso l'andamento del fine settimana (vederdì sabato e domenica), che vede un utilizzo inferiore durante mattina e pomeriggio e sera rispetto agli altri 4 giorni; per poi avere picchi che surclassano notevolmente gli altri giorni durante la notte. Quindi, riassumendo, nel caso in cui si volesse effettuare una manutenzione di alcune strutture si potrebbe effettuare nell'arco notturno dal lunedì al giovedi, oppure se l'azienda ne è impossibilitata, durante la giornata nel fine settimana.

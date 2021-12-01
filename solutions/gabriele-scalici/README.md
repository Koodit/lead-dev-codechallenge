Lead Developer - Koode Challenge
===============

## Richiesta

Questo repository include una replica della pagina https://www.koodit.it/carriera/lead-web-developer/ in tutte le sue parti.

Include l'upload di un massimo di 10 CV in formato PDF (utilizzando un box con funzionalità Drag & Drop) e l'invio via mail di tutti i dati, oltre che il salvataggio su database.

I contenuti provengono da un database SQL strutturato appositamente.

## Tecnologie
<ul>
  <li>Strapi 3.6 CMS</li>
  <li>Gatsby.js</li>
  <li>MariaDB</li>
  <li>Adminer</li>
  <li>Deploy su istanza Docker tramite docker-compose</li>
</ul>

## Requisiti

- Rinominare il file `.env.example` a `.env`
- Lanciare i containers con `docker-compose up`

## CMS
- Per accedere al CMS su http://localhost:1337 usare i seguenti dati:  
```
Username: admin@root.local 
Password: Password1!
```

## Frontend
Dopo l'avvio del frontend, l'url per raggiungerlo è http://localhost:8000, javascript è richiesto per il normale funzionamento delle pagine.

## Ricezione E-mail
L'email verrà ricevuta direttamente all'indirizzo e-mail inserito nel form. Le email sono inviate senza auth direttamente da node sendmail (controllare il filtro anti-spam in caso di mancata ricezione).

## MariaDB e Adminer
Le credenziali per accedere al database sono incluse all'interno del file `.env.example` e il dump del database caricato durante l'avvio dei container. Il pannello di controllo Adminer è raggiungibile all'indirizzo http://localhost:8080, utilizzando `db` come host e il resto delle credenziali incluse.

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
- Lanciare il container con `docker-compose up`

## CMS
- Per accedere al CMS su http://localhost:1337 usare i seguenti dati:  
```
Username: admin@root.local 
Password: Password1!
```

## Ricezione E-mail
L'email verrà ricevuta direttamente all'indirizzo e-mail inserito nel form.

# Stack  

CMS: Strapi (con mysql)  
Frontend: Gatbyjs  
Gestione Form: Formspark  

# Installazione (comandi validi dalla root del progetto)

## Avvio docker containers per strapiCMS e mySql

```
docker-compose up
```

## Installazione frontend (necessario node, versione minima node 14)  

```
cd frontend
npm install
```

## Inizializzazione frontend (Development mode)

```
cd frontend
npm run develop
```

## Inizializzazione frontend (Production mode)

```
cd frontend
npm run build
npm run serve
```

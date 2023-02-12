# Jkr-Lahti

Lahden jätteenkuljetusrekisteri

Lahden kaupungin jätehuollon kuljetusten seurantaan kehitettävä rekisteri (PostGIS/QGIS).

Integroi tietoja DVV, Lahden päätöstietojen ja jätehuoltoyritysten kuljetustiedoista. 

Toteutus 2022-2023

## Tietokantakuvaus

Tietokannan dokumentaatio löytyy kansiosta [docs/db](docs/db/README.md)

![docs/jkr-db.png](docs/jkr-db.png)
[docs/jkr-db.png](docs/jkr-db.png)



## Kehitysympäristön pystytys

```shell
git clone --recursive https://github.com/gispocoding/jkr-lahti
cd jkr-lahti
```
### Tietokannan käynnistys
```
docker compose -f .\jkr-core\docker-compose.yml -f .\docker-compose.yml --project-directory . up -d db
```
Tai vaihtoehtoisesti Windowsin Powershellissä
```
.\dc.ps1 up -d db
```

> dc.ps1 on "alias" yllämainitulle tarkemmalle `docker compose` kommennolle.

### Tietokantamigraatioiden ajaminen

```
.\dc.ps1 up flyway
.\dc.ps1 up flyway_lahti
```

> **Migraatioiden ajaminen toiseen ympäristöön**
> ```
> .\dc.ps1 run --rm flyway migrate -user=jkr_admin -password=<password> -url=jdbc:postgresql://<host>:<port>/<dbname>
> ```

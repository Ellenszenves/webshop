# Techshop DB
Maga az adatbázis hobbiprojekt, nem alkalmas üzleti, vagy éles alkalmazásra!

## Dockeres telepítés:
A script egyelőre centos 7-re lett írva, maga az image készítés és a konténer indítása más disztribúción is működhet.<br />
Fontos, hogy 2 GB, vagy ennél több memória legyen a gépünkön, különben a szerver nem működik, ez alatt a telepítő sem fut le.<br />
A legegyszerűbben a `docker-setup.sh` fájl futtatásával lehet minden szükséges dolgot telepíteni.<br />
Ha még nincs a gépen docker telepítve, megtehetjük manuálisan, vagy a script segítségével centos 7-en az 1-es opciót kiválasztva.<br />
Ezután érdemes egy újraindítást, vagy egy újra bejelentkezést végrehajtani.<br />
Ha a docker telepítve van a 2-es opcióval elkészíthetjük a konténerhez szükséges image-et.<br />
Ezután ha sikeresen elkészült el is indul a konténer.<br />

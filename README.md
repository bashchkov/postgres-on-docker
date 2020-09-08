#### Example docker-compose.yml for postgres:
```yaml
version: "3"

volumes:
  db-data:
  db-backups:

services:
  db:
    restart: unless-stopped
    image: moxlive/postgres
    environment:
      - POSTGRES_DB=
      - POSTGRES_USER=
      - POSTGRES_PASSWORD=
      - POSTGRES_HOST=127.0.0.1
      - POSTGRES_PORT=5432
      - BACKUP_DIR_PATH=/backups
      - BACKUP_FILE_PREFIX=backup
    volumes:
      - db-data:/var/lib/postgresql/data
      - db-backups:/backups
  web:
    depends_on:
      - db
```

#### Create a database backup.
```shell script
$ docker-compose exec db backup
```

#### View backups.
```shell script
$ docker-compose exec db backups
```

#### Restore database from a backup.
```shell script
$ docker-compose exec db restore [filename of an existing backup]
```

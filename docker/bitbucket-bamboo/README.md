# Self-hosted Bitbucket + Bamboo 

## Necessary Configuration

- Under `env/bamboo.env`: Chapter *Reverse Proxy Settings*, and maybe `JDBC_PASSWORD` and Chapter *Java Settings*
- Under `env/bitbucket.env`: Chapter *Reverse Proxy Settings*, and maybe `JDBC_PASSWORD` and Chapter *Java Settings*
- Under `env/postgres-bamboo.env`: `POSTGRES_PASSWORD` (if changed in `env/bamboo.env`)
- Under `env/postgres-bitbucket.env`: `POSTGRES_PASSWORD` (if changed in `env/bitbucket.env`)
- In `.env`: `BAMBOO_PORT_1/2` and `BITBUCKET_PORT_1/2` (in case of duplicate port binding / other hosting layout)

## Running

Just simply run `docker-compose up -d` and / or `docker-compose down`.

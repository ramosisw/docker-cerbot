# docker-cerbot
Create SSL Certificates with Let's Encrypt / CertBot [Multi-Arch]

## Table of Contents

- [Usage](#usage)

## Usage
I use it personally for manual certifications with DNS TXT validation

```bash
//Use docker-compose.yml to mount ./etc/letsencrypt directory
docker-compose run cerbot --server https://acme-v02.api.letsencrypt.org/directory -d domain.com --email email@domain.com --agree-tos --manual --preferred-challenges dns certonly
```
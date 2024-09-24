# Installation
## With Docker Compose (recommended)
### Prerequisites
- [Docker](https://www.docker.com/)

### How to run
- Clone the repository with sub-repos
```bash
git clone git@github.com/AyakoBot/Ayako.git --recurse
```
- Copy the `.env.example` file to `.env` and fill/replace the values
- Make Prometheus ready
```bash
cd ./scripts
./postclone.sh
```
- Build and run the Docker Compose image
```bash
docker compose up -d
```
### Re-building / Re-starting the Docker Compose image
```bash
docker compose down ayako
docker compose build ayako --no-cache
docker compose up ayako -d
```

## Just Ayako
[See Ayako](https://github.com/AyakoBot/Ayako-v2)

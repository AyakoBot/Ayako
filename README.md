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
- Apply Redis performance settings
```bash
sudo sysctl -w vm.overcommit_memory=1
sudo sysctl -w vm.overcommit_memory=1
sudo sysctl -w vm.nr_hugepages=1024
echo 'vm.overcommit_memory = 1' | sudo tee -a /etc/sysctl.conf
echo 'vm.overcommit_memory = 1' | sudo tee -a /etc/sysctl.conf
echo 'vm.nr_hugepages = 1024' | sudo tee -a /etc/sysctl.conf
```
- Build and run the Docker Compose image
```bash
docker compose up -d
```
### Re-building / Re-starting the Docker Compose image
```bash
docker compose build ayako --no-cache
docker compose down ayako 
docker compose up ayako -d 
```

## Just Ayako
[See Ayako](https://github.com/AyakoBot/Ayako-v2)

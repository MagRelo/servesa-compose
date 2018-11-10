# Servesa.io

Server infrastructure for servesa.io

## Setup:

1. Connect to server

- `$ ssh root@<public_ip>`

2. Copy all files from this repo to /etc

- `$ scp -r /Users/mattlovan/Projects/servesa-compose root@<public_ip>:/etc/`

3. Install Docker (https://docs.docker.com/install/)

- `$ sudo apt-get update`
- `$ sudo apt-get install \ apt-transport-https \ ca-certificates \ curl \ software-properties-common`
- `$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
- `$ sudo add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) \ stable"`
- `$ sudo apt-get update`
- `$ sudo apt-get install docker-ce`

4. Test Docker install

- `$ sudo docker run hello-world`

5. Install Docker Compose (https://docs.docker.com/compose/install/#install-compose)

- `$ sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose`
- `$ sudo chmod +x /usr/local/bin/docker-compose`

6. Test Docker Compose install

- `$ docker-compose --version`

7. Start compose

- `$ cd /usr/local/etc`
- `$ sudo docker-compose up`

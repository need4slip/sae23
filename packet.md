## Paquets à installer

### 1.  Installer Python 3, pip et Flask

<<
sudo apt update
sudo apt install python3 python3-pip -y
pip3 install Flask
>>

### 2.  Installer MySQL

<<
sudo apt install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql
>>

### 3.  Installer Docker et Docker Compose

<<
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
>>

#!/bin/bash
docker-setup() {
        dockercheck=$(sudo systemctl status docker | grep -o "active")
        if [[ $dockercheck == "active" ]]
        then
        echo "A docker már aktív!"
        else
        sudo yum remove docker \
                    docker-client \
                    docker-client-latest \
                    docker-common \
                    docker-latest \
                    docker-latest-logrotate \
                    docker-logrotate \
                    docker-engine
        sudo yum install -y yum-utils
        sudo yum-config-manager \
        --add-repo \
        https://download.docker.com/linux/centos/docker-ce.repo
        sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
        sudo systemctl start docker
        sudo systemctl enable docker
        sudo usermod -aG docker $USER
        echo "Telepítés kész, ajánlott újból bejelentkezni!"
        fi
    main
}

setup() {
    dockercheck=$(sudo systemctl status docker | grep -o "active")
    if [[ $dockercheck == "active" ]]
    then
    docker build -t techshop:1 .
    imagecheck=$(sudo docker images | grep -o "techshop")
        if [[ $imagecheck == "techshop" ]]
        then
        docker run --name techshop -d -p 1433:1433 techshop:1
        else
        echo "A képfájl készítésébe hiba csúszott, az adatbázist nem tudjuk elindítani!"
        fi
    else
    echo "A docker nem aktív, próbálja meg telepíteni!"
    fi
    main
}

main() {
    memcheck=$(free -m  | grep ^Mem | tr -s ' ' | cut -d ' ' -f 2)
    if [[ $memcheck -lt "2048" ]]
    then
    echo "Az MSSQL-nek legalább 2 GB memóriára van szüksége!"
    else
    echo " Memória: $memcheck MB"
    printf " Opciók:\n 1. Docker telepítés\n 2. Adatbázis telepítés\n"
    read -p " Válasszon:" func
    if [[ $func == "1" ]]
    then
    docker-setup
    elif [[ $func == "2" ]]
    then
    setup
    fi
    fi
}
main
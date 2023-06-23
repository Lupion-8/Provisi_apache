#!/bin/bash

echo "Atualiza os pacotes do sistema"
sudo apt-get update

echo "Instala o Apache"
sudo apt-get install -y apache2

echo "Inicia o serviço do Apache"
sudo systemctl start apache2

echo "Habilita o serviço para iniciar na inicialização do sistema"
sudo systemctl enable apache2

echo "Configura o firewall para permitir tráfego HTTP (porta 80)"
sudo ufw allow 'Apache'

echo "Exibe o status do serviço Apache"
sudo systemctl status apache2

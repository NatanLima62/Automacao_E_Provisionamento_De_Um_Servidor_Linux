# Atualizar o servidor
sudo apt update && sudo apt upgrade -y

# Instalar o Apache2 e o unzip
sudo apt install apache2 unzip -y

# Baixar a aplicação e descompactá-la
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# Copiar os arquivos da aplicação para o diretório padrão do Apache
sudo cp -r /tmp/linux-site-dio-main/* /var/www/html/

# Reiniciar o Apache para aplicar as alterações
sudo systemctl restart apache2

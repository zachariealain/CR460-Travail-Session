# Image de base
FROM ubuntu:16.04

#Installation d'apache
RUN apt-get update --fix-missing
RUN apt-get install -y apache2 


# Add wordpress files
ADD index.html /var/www/html/
ADD entrypoint.sh /

# Identifie quelle commande rouler
ENTRYPOINT  ["/bin/bash", "/entrypoint.sh"]

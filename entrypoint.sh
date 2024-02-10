#!/bin/sh

# Iniciar a aplicação Spring Boot em segundo plano
java -jar /app/app.jar &

# Manter o contêiner ativo
tail -f /dev/null
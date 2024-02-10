# Usar a imagem base do OpenJDK
FROM openjdk:17-oracle

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo JAR da aplicação e o script de entrada para o diretório de trabalho
COPY target/java-docker-0.0.1-SNAPSHOT.jar java-app.jar

EXPOSE 8080

CMD java -jar java-app.jar & tail -f /dev/null
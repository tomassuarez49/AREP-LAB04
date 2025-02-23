# Usa la imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Crea un directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR compilado
COPY ./target/LAB03-1.0-SNAPSHOT.jar /app/HttpServer.jar

# Copia la carpeta `webroot` para archivos estáticos
COPY ./webroot /app/webroot

# Copia los controladores (si están en `src/main/resources/controllers/`)
COPY ./src/main/java/com/mycompany/lab04/controller /app/controller

# Expone el puerto que usará el servidor
EXPOSE 32000

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "/app/HttpServer.jar"]

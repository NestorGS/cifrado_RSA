# Usa la imagen oficial de Tomcat
FROM tomcat:9.0

# Elimina aplicaciones por defecto (como ROOT)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia el WAR generado por Maven al contenedor y nómbralo ROOT.war
COPY target/RSAApp.war /usr/local/tomcat/webapps/ROOT.war

# Expone el puerto por defecto de Tomcat
EXPOSE 8080

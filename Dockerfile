# Usar una imagen de Node.js como base
FROM node:14

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de configuración de Strapi
COPY ./strapi-horarios/package.json ./
COPY ./strapi-horarios/package-lock.json ./

# Instalar las dependencias de Strapi
RUN npm ci --production

# Copiar el código fuente de Strapi
COPY ./strapi-horarios .

# Copiar los archivos del certificado SSL
COPY ./cert/NetlifeNetEc1.crt.pem /app/cert/
COPY ./cert/netlifeNetEc1.key.pem /app/cert/

# Exponer el puerto en el contenedor
EXPOSE 1337

# Comando para ejecutar Strapi
CMD ["npm", "start"]

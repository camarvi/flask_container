FROM alpine:3.10  
#Esta es la imagen linux que utilizo alpine

#añadir python a la imagen de linux y el paquete pip python3-dev y actualizar pip3

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip    

#ESTABLECER EL DIRECTORIO DE TRABAJO EN EL CONTENEDOR

WORKDIR /app

#Copio todo el contenido de la carpeta, (.) a la carpeta /app
COPY . /app
# Instalar en el contenedor todos los modulos que necesita la aplicacion para funcionar
RUN pip3 --no-cache-dir install -r requirements.txt

# Ejecutar mi fichero app.py
CMD ["python3","src/app.py"]
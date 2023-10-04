
# Utiliza una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
ADD requirements.txt requirements.txt


# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos de la aplicación al contenedor
COPY . .

# Expone el puerto 5000 para que la aplicación Flask pueda ser accedida desde fuera del contenedor
EXPOSE 2386

# Inicia la aplicación
CMD gunicorn app.app --bind 0.0.0.0:2368 --workers 3 --threads 2 --preload-app=true --keepa-alive



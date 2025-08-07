# bdata-tarea3

## Orden de ejecución:

Al ser clonado desde gitHub, los archivos excel de los que se componen los datos, se deben descargar pues son solo "punteros" en su forma actual.

### Comandos de git
1. `sudo apt-get install git-lfs`, para descargar el paquete necesario para obtener los objetos.
2. `git lfs fetch`, para obtener los archivos que trackea el LFS de git en el repo remoto.
3. `git lfs checkout` para reemplazar los punteros con los archivos reales.

**Es muy importante ejecutar estos comandos antes de construir la imagen de Docker**, de no hacerlo, los `.xlsx` y `.csv` en el directorio de `datasets/` no tendrán la información necesaria para replicar el proyecto.

### Orden de scripts
1. `build_image.sh` para crear la imagen del contenedor principal
2. `run-postgres.sh` para crear la imagen de postgres y ejecutar un contenedor con ella.
    * de forma alternativa, para computadoras ARM como las Apple, existe el script `run-postgres-ARM.sh`, que obtiene la imagen de postgres para la arquitectura respectiva.
3. `run_image.sh` para ejecutar un contenedor con la imagen principal

**---** lo siguiente es estando dentro del contenedor, i.e. con la consola `bash 5.0#` **---**

4. `launch-jupy.sh` para levantar el proceso de Jupyter Notebook y poder trabajar

5. Abrir jupyter en el puerto 8.8.8.8 con el enlace que le muestra la consola

6. Abrir el cuaderno `MainProject.ipynb` para ver sus contenidos. 
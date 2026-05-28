
## Para bajar la carpeta de grupos

Buscar de acuerdo al numero de sus grupos en [Carpetas de grupos](https://uccl0-my.sharepoint.com/:f:/g/personal/jlreutte_uc_cl/IgCPiUy_PJfVRruNgUQLDiLqAeLWtjKRiHV8FRHeWGArK8Q?e=uTKMdV).

# Integrantes del Grupo
## Grupo 33
Emma Brunetti Fantuzzi - 23645083 ..
Antonia Belén Ríos Donoso - 23644524 ..
Martín Concha Ortega - 24643130 ..

# Versión utilizada
PostgreSQL 18.3
Python 3.12

# Comandos para reproducir
## 0. Ubicarse en carpeta del proyecto
cd <path/to/project-directory>
ej: cd path/to/Tarea-2-Bases-de-Datos
## 1. Crear base de datos
createdb bookstore_g33
## 2. Cargar esquema
psql -d bookstore_g33 -f schema.sql
## 3. Cargar datos
psql -d bookstore_g33 -f load.sql
## 4. Aplicar índices
psql -d bookstore_g33 -f indexes.sql
## 5. Crear materialized view
psql -d bookstore_g33 -f matview.sql
## 6. Actualizar estadísticas
psql -d bookstore_g33 -c "ANALYZE;"
## 7. Ejecutar workload optimizado
python run_workload.py --db bookstore_g33 --workload workload_after.sql --csv times_after.csv
o en algunos sistemas
python3 run_workload.py --db bookstore_g33 --workload workload_after.sql --csv times_after.csv

# En caso de requerir autenticación explícita, utilizar:

## En crear base de datos (1)
createdb -U <usuario> bookstore_g33
ej: createdb -U postgres bookstore_g33 ...
## En comandos sql (2, 3, 4, 5, 6)
psql -U <usuario> -d bookstore_g33 -f schema.sql
psql -U <usuario> -d bookstore_g33 -f load.sql
psql -U <usuario> -d bookstore_g33 -f indexes.sql
psql -U <usuario> -d bookstore_g33 -f matview.sql
psql -U <usuario> -d bookstore_g33 -c "ANALYZE;"
ej: psql -U postgres -d bookstore_g33 -f schema.sql

## En Ejecutar workload (7)
python run_workload.py --db bookstore_g33 --workload workload_after.sql --csv times_after.csv --user <usuario> --password <contraseña>
ej: python run_workload.py --db bookstore_g33 --workload workload_after.sql --csv times_after.csv --user postgres --password postgres
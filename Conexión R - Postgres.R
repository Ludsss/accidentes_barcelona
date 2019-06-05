#install.packages("RPostgreSQL")
require("RPostgreSQL")

# Guardar el Password para poder posteriormente eliminarlo
pw <- { "1796vd"}

# Leer el driver de PostgreSQL
drv <- dbDriver("PostgreSQL")

# Crear la conexion con la base de datos
con <- dbConnect(drv, dbname = "postgres",
                 host = "localhost", port = 5432,
                 user = "postgres", password = pw)

# Eliminar el Password
rm(pw) 

# Chequear que no existe la tabla de la base de datos
dbExistsTable(con, "desc_marca_vehiculo")


# Extraer datos de la base de datos
datos_postgres <- dbGetQuery(con, "SELECT * FROM desc_marca_vehiculo")
datos_postgres


# PARA CONECTAR A LA BBDD DE LUDO

# Guardar el Password para poder posteriormente eliminarlo
pw <- { "ludo"}

# Leer el driver de PostgreSQL
drv <- dbDriver("PostgreSQL")

# Crear la conexion con la base de datos
con <- dbConnect(drv, dbname = "accidentes_barcelona",
                 host = "192.168.0.165", port = 5432,
                 user = "postgres", password = pw)

# Eliminar el Password
rm(pw) 

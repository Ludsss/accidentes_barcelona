 IP AT HOME 83.49.171.22
 
 #Primero debo instalar el repositorio en el terminal del ordenador

$ conda install pymssql 

#Luego ejecuto jupyter 

#Primero ejecuto la libreria que me permite conectar con la base de datos que se almacena en AZURE 
import pymssql 

#En segundo lugar establezco la conección
conn= pymssql.connect(server='serveraccidentes.database.windows.net', user='byludo@serveraccidentes', password='Mariop96', database='accidentes')

#Creo el cursor 
cursor= conn.cursor()  

#Para crear una tabla utilizo 
sqlQuery= "CREATE TABLE tipologia(idTipologia int, descTipologia varchar(32))"   
cursor.execute(sqlQuery)

#Ya tengo la tabla creada 




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portfolio</title>
    </head>
    <body>
        <h1>Ingreso Datos Personales</h1>
        <form action="SvPersona" method="POST"> 
            
            <p><label>DNI: </label><input type="text" name="dni"></p>
            
            <p><label>Password: </label><input type="text" name="password"></p>
            <p><label>Nombre </label><input type="text" name="nombre" /></p> 
            <p><label>Apellidos: </label><input type="text" name="apellido" /></p>        
            <p><label>Dirección:</label><input type="text" name="direccion" /></p> 
        
            <p><label>Correo electrónico: </label><input type="text" name="email" /></p>
        
            <p><label>Teléfono: </label><input type="text" name="telefono" /></p>         
        
            
            <button type="submit">Registrarse</button>
        </form>
        
    </body>
</html>

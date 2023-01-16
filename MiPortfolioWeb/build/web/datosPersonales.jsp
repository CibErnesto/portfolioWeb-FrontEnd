

<%@page import="java.util.List"%>
<%@page import="logoca.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Personales</title>
    </head>
    
        <h1>Datos Personales</h1>
        
        <%
            List<Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
            
            for (Persona per : listaPersonas) {
            
        %>
        
        <p><b>Dni: </b><%=per.getDni()%></p>
        <p><b>Password: </b><%=per.getPassword()%></p>
        <p><b>Nombre: </b><%=per.getNombre()%></p>
        <p><b>Apellido: </b><%=per.getApellido()%></p>
        <p><b>Direccion: </b><%=per.getDireccion()%></p>
        <p><b>Email: </b><%=per.getEmail()%></p>
        <p><b>Telefono: </b><%=per.getTelefono()%></p
        <p>--------------------------------------------------</p>
        <% 
            }        
        %>
        
    
</html>

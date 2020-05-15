<%-- 
    Document   : ListaAlumnos
    Created on : 14-may-2020, 21:09:21
    Author     : luis_
--%>

<%@page import="java.util.List"%>
<%@page import="idat.edu.pe.model.Alumno"%>
<%@page import="idat.edu.pe.model.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="layout.jsp" %>
         <%
            
            List<Alumno> listAlumnos = (List<Alumno>) request.getAttribute("lstalumnos");

        %>
 <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Código</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellidos</th>
                    <th scope="col">Especialidad</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < listAlumnos.size(); i++) {                        
                %>
                <tr>
                    <th scope="row"><%=i%></th>
                    <td><%=listAlumnos.get(i).getIdAlumno()%></td>
                    <td><%=listAlumnos.get(i).getNomAlumno()%></td>
                    <td><%=listAlumnos.get(i).getApeAlumno()%></td>
                    <td><%=listAlumnos.get(i).getNomEspecialidad()%></td>
                </tr>  
                <%}
                %>

            </tbody>
        </table>          
        
    </body>
</html>

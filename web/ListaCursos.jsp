<%-- 
    Document   : ListaCursos
    Created on : 21-may-2020, 17:57:18
    Author     : luis_
--%>

<%@page import="idat.edu.pe.model.Curso"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="layout.jsp" %>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Listado de Cursos</h5>
                <a  class="btn btn-primary" href="RegistrarCursoController?idcurso=0">Registrar</a>
                <%

                    List<Curso> listCursos = (List<Curso>) request.getAttribute("lstcursos");
                    if (request.getAttribute("msgeliminar") != null) {
                        String msgeliminar = request.getAttribute("msgeliminar").toString();
                        String colormsgeliminar = request.getAttribute("colormsgeliminar").toString();
                %>
                <div class="alert alert-info alert-dismissible fade show" role="alert">
                    <strong>Correcto!</strong> <%=msgeliminar%>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <% }
                %>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nombre Curso</th>
                            <th scope="col">Crédito</th>
                            <th scope="col">Actualizar</th>
                            <th scope="col">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Curso objCurso : listCursos) {
                        %>
                        <tr>
                            <td><%=objCurso.getIdcurso()%></td>
                            <td><%=objCurso.getNomcurso()%></td>
                            <td><%=objCurso.getCredito()%></td>
                            <td><a href="RegistrarCursoController?idcurso=<%=objCurso.getIdcurso()%>" class="btn btn-info">Actualizar</a></td>
                            <td><a href="EliminarCursoController?idcurso=<%=objCurso.getIdcurso()%>" class="btn btn-danger">Eliminar</a></td>
                        </tr>  
                        <%}
                        %>

                    </tbody>
                </table>                   
            </div>
        </div>

    </body>
</html>

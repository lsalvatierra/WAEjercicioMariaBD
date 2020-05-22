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
                <%

                    List<Curso> listCursos = (List<Curso>) request.getAttribute("lstcursos");

                %>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nombre Curso</th>
                            <th scope="col">Crédito</th>
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
                        </tr>  
                        <%}
                        %>

                    </tbody>
                </table>                   
            </div>
        </div>

    </body>
</html>

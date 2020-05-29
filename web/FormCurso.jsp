<%-- 
    Document   : FormCurso
    Created on : 21-may-2020, 17:59:14
    Author     : luis_
--%>

<%@page import="idat.edu.pe.model.Curso"%>
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
                <h5 class="card-title">Registrar Curso</h5>
                <form method="post" action="RegistrarCursoController">
                    <%
                        if (request.getAttribute("objcurso") == null) {
                    %>
                    <div class="form-group">
                        <label for="txtnomcurso">Ingrese el nombre del curso:</label>
                        <input type="text" class="form-control" name="txtnomcurso" id="txtnomcurso">
                    </div>   
                    <div class="form-group">
                        <label for="txtcredcurso">Ingrese el crédito del curso:</label>
                        <input type="text" class="form-control" name="txtcredcurso" id="txtcredcurso">                        
                    </div>
                    <input type="hidden" id="hddidcurso" name="hddidcurso" value="0" />
                    <%} else {
                        Curso objcurso = (Curso) request.getAttribute("objcurso");
                    %>
                    <div class="form-group">
                        <label for="txtnomcurso">Ingrese el nombre del curso:</label>
                        <input type="text" class="form-control" name="txtnomcurso" value="<%=objcurso.getNomcurso()%>" id="txtnomcurso">
                    </div>   
                    <div class="form-group">
                        <label for="txtcredcurso">Ingrese el crédito del curso:</label>
                        <input type="text" class="form-control" name="txtcredcurso" value="<%=objcurso.getCredito()%>" id="txtcredcurso">                        
                    </div> 
                    <input type="hidden" id="hddidcurso" name="hddidcurso" value="<%=objcurso.getIdcurso()%>" />
                    <% } %>                    
                    <button type="submit" class="btn btn-danger">Registrar</button>
                </form>
                <%
                    if (request.getAttribute("respuesta") != null) {
                %>
                <div class="alert alert-<%=request.getAttribute("colormsg").toString()%>" role="alert">
                    <%=request.getAttribute("respuesta").toString()%>
                </div>
                <%}%>
            </div>
        </div>
    </body>
</html>

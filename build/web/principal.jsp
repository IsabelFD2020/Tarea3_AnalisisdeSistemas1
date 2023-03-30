<%-- 
    Document   : login
    Created on : 27/03/2023, 11:05:45 PM
    Author     : Alcan
--%>

<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Intentos"%>
<%@page import="com.emergentes.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="./css/style.css">

    </head>
    <body>

        <%
            Usuario us = (Usuario) request.getSession().getAttribute("usuario");
            int id = us.getId();
        %>

        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="dropdown">
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                    Cerrar Sesion
                </button>
                <div class="dropdown-menu text-center">
                    <a class="dropdown-item" href="#">
                        <img src="img/usuario-8.png" alt="60" width="60"/>
                    </a>
                    <a class="dropdown-item" href="index.jsp">Cerrar Sesion</a>
                </div>
            </div>
        </nav>

        <div class="wrapper fadeInDown">

            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->
                <div class="fadeIn first">
                    <img src="./img/LOGO_UMG_juvenil.jpg" id="icon" alt="User Icon" />
                </div>

                <!-- Login Form -->
                <form action="ProcesaServlet?accion=<%=id%>" method="POST">
                    <h2>INGRESA UN NUMERO PRIMO:</h2>
                    <input type="text" id="login" class="fadeIn second" name="numero" placeholder="Numero Primo">
                    <input type="submit" class="fadeIn fourth" value="Ingresar" name="procesar">
                </form>


                <%
                    try {

                        List<Intentos> inte = (List<Intentos>) request.getSession().getAttribute("mostrarInte");

                %>

                <div class="well">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>No. Intentos</th>
                                <th>Usuario</th>
                                <th>Numero ingresado</th>
                                <th>Sumatoria Numeros Primos</th>
                                <th style="width: 36px;"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%    for (Intentos i : inte) {

                                    int idInte = i.getIdIntentos();
                                    int idUsu = i.getIdUsuarios();
                                    int numeroIngr = i.getNumeroIngresado();
                                    int sumaPrimo = i.getSumaPrimos();

                            %>
                            <tr>
                                <td><%=idInte%></td>
                                <td><%=idUsu%></td>
                                <td><%=numeroIngr%></td>
                                <td><%=sumaPrimo%></td>
                            </tr>
                            <%    }
                            %>
                        </tbody>
                    </table>
                </div>


                <%} catch (Exception e) {

                %>


                <h2>No hay intentos realizados</h2>


                <%                    }
                %>

            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

    </body>
</html>

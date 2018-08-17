<%-- 
    Document   : index
    Created on : Aug 16, 2018, 1:03:47 AM
    Author     : saintrec
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda_UAR</title>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery_3_3_1.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>        
        <script src="js/moment.js" type="text/javascript"></script>
        <link href="css/fullcalendar.css" rel="stylesheet" type="text/css"/>
        <script src="js/app_uar.js" type="text/javascript"></script>
        <link href="css/fullcalendar.print.css" rel="stylesheet" type="text/css"/>
        <script src="js/fullcalendar.js" type="text/javascript"></script>
        <script src="js/Chart.min.js" type="text/javascript"></script>
    </head>
    <body>
        <%
            //Conexion a la base de datos 
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agendauar", "root", "");
            //Listado de Datos
            PreparedStatement ps;
            ResultSet rs;
            ps = con.prepareStatement("select * from useruar");
            rs = ps.executeQuery();
        %>
        <br>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light border border-success rounded">
                <a class="navbar-brand" href="">
                    <img src="images/LOGO-PRINCIPAL7.png" alt="Logo Espe" height="40px" width="110px"/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href='#' id="home">Inicio
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href='#' id="consejodc">Consejos
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href='#' id="defensag">Defensas
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href='#' id="reporteg">Reportes
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                    </ul>

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false">Welcome,
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#"><span data-feather="user"></span>&nbsp;Perfil</a>
                                <a class="dropdown-item" href="#"><span data-feather="edit"></span>&nbsp;Act. Datos</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="./php/logout.php"><span data-feather="log-out"></span>&nbsp;Salir</a>
                            </div>
                        </li>
                    </ul>

                    &nbsp;&nbsp;&nbsp;
                </div>
            </nav>
        </div>
        <br>   
        <div id="contenido">
            <center>
                <h1>
                    Sistema de Citas
                </h1>
            </center>
            <br>   
            <div class="container">
                <table class="table table-sm table-bordered">

                    <tr class="text-center table-success">
                        <td>Name</td>
                        <td>Surname</td>
                        <td>Email</td>
                        <td>Privileges</td>
                        <td>Action</td>
                    </tr>

                    <%
                        while (rs.next()) {
                    %>
                    <tr class="text-center">
                        <td><%= rs.getString("user_name")%> </td>
                        <td><%= rs.getString("user_surname")%> </td>
                        <td><%= rs.getString("user_email")%> </td>
                        <td><%= rs.getString("user_privilege")%> </td>
                        <td>
                            <a class="btn btn-outline-primary btn-sm">Editar</a>
                            <a class="btn btn-outline-danger btn-sm">Borrar</a>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </div>


        </div>

    </body>
</html>

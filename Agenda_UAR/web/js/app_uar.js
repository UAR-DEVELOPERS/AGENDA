$(document).ready(function () {

    $('#home').click(function () {
        $("#contenido").load("./index.jsp");
    });
    $('#consejodc').click(function () {
        $("#contenido").load("./c_cd.jsp");
    });
    $('#defensag').click(function () {
        $("#contenido").load("./dg.jsp");
    });
    $('#reporteg').click(function () {
        $("#contenido").load("./report.jsp");
    });

});
<%-- 
    Document   : temp
    Created on : Nov 7, 2021, 1:59:27 AM
    Author     : poramet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <% String inpTmp = request.getParameter("temperature");
            if (request.getParameter("convertToF") != null) {
                Double ans = (Double.parseDouble(inpTmp) * (9.0/5.0)) + 32;
                out.println(ans + " เซลเซียส");
            } else if (request.getParameter("convertToC") != null) {
                Double ans = (Double.parseDouble(inpTmp) - 32) * (5.0/9.0);
                out.println(ans + " ฟาเรนไฮต์");
            }
        %>
    </body>
</html>
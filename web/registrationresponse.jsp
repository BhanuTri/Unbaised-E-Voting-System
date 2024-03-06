<%-- 
    Document   : Registrationresponse
    Created on : 25 Jun, 2023, 3:57:15 AM
    Author     : 91756
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
boolean result=(boolean)request.getAttribute("result");
boolean userfound=(boolean)request.getAttribute("userfound");
if(userfound==true)
out.println("uap");
else if(result==true)
out.println("success");
else
out.println("error");
%>

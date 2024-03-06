<%-- 
    Document   : showexception
    Created on : 25 Jun, 2023, 4:02:42 AM
    Author     : 91756
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   
Exception ex=(Exception)request.getAttribute("Exception");
System.out.println("Exception is:"+ex);
out.println("some exception occurred"+ex.getMessage());



%>
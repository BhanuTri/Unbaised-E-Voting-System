<%-- 
    Document   : loginresponse
    Created on : 2 Jul, 2023, 4:37:55 PM
    Author     : 91756
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
String userid=(String)request.getAttribute("userid");
String result=(String)request.getAttribute("result");
if(userid!=null && result!=null){
    HttpSession sess=request.getSession();
    sess.setAttribute("userid", userid);
    String url="";
    if(result.equalsIgnoreCase("Admin")){
      url="AdminControllerServlet;jsessionid="+sess.getId() ; 
    }
    else{
        url="VotingControllerServlet;jsessionid="+sess.getId();
    }
    out.println(url);
}
else
out.println("error");


%>
<%-- 
    Document   : adminoptions
    Created on : 4 Jul, 2023, 12:29:18 PM
    Author     : 91756
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="jScript\adminoptions.js"></script>
  <script src="jScript\jquery.js"></script>
   
    <link href="stylesheet/backgroundimage.css" rel="stylesheet">
    <link href="stylesheet/pageheader.css" rel="stylesheet">
        <link href="stylesheet/admin.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Admin Options</title>
    </head>
    <body>
        <% 
          String userid=(String)session.getAttribute("userid");
          if(userid==null){
              response.sendRedirect("accessdenied.html");
              return;
          }
                      StringBuffer displayBlock=new StringBuffer("<div class='sticky'><div class='candidate'>VOTE FOR CHANGE</div><br>"+
        "<div class='subcandidate'>Admin Actions Page</div><br><br>"+
                    "<div class='logout'><a href='login.html'>logout</a></div></div>");
            displayBlock.append("<div class='container'>");
            displayBlock.append("<div id='dv1' onclick='redirectadministratorpage()'><img src='images/administrator.png' style='border:1px solid #000000' height='200px' width='200px'><br><h3>Admin Options</h3></div>");
            displayBlock.append("<div id='dv2' onclick='redirectvotingpage()'><img src='images/voteadmin.jpg' style='border:1px solid #000000' height='200px' width='200px'><br><h3>Voting Page</h3></div>");
            displayBlock.append("</div>");
            displayBlock.append("<br><br><div align='center' id='result'></div>");
            out.println(displayBlock);

      %>
    </body>
</html>

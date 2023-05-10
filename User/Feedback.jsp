<%-- 
    Document   : Feedback
    Created on : 2 Dec, 2022, 4:53:27 PM
    Author     : altob
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="SessionValidator.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title align="center">Feedback</title>
         <%
             String feedback="";
        if(request.getParameter("btn_submit")!=null)
        {
            feedback=request.getParameter("txt_feedback");
            
             String insQry="insert into tbl_feedback(feedback_content,user_id)values('"+feedback+"','"+session.getAttribute("uid")+"') ";
            con.executeCommand(insQry);
            
            out.println(insQry);
            }
            
            
            %>
            
    </head>
    
    <body>
        <h1 align="center">Feedback</h1>
        <form method="post">
              <table align="center">
    <tr>
      <td align="center">Feedback</td>
    </tr>
    <tr>
      <td>
      <textarea name="txt_feedback" id="txt_feedback"></textarea>
      </td>
    </tr>
    <tr>
      <td align="center">
          <input type="submit" name="btn_submit" >
      </td>
    </tr>
  </table>
        </form>
        </body>
</html>

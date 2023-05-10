<%-- 
    Document   : TutorialContent
    Created on : 12 Feb, 2023, 1:47:46 PM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="SessionValidator.jsp"%>
<%@include file="Head.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial content</title>
        <%
            if(request.getParameter("btn_submit")!=null)
            {   
                String content_title=request.getParameter("txt_title");
                String details=request.getParameter("txt_content");
                String ins="insert into tbl_tutorial_content(tutorial_content_title,tutorial_content_details,tutorial_id)values('"+content_title+"','"+details+") ";
                con.executeCommand(ins);
            }
        %>
    </head>
    <body>
        <form method="POST">
        <h1>Tutorial content</h1>
        <%
      
          String selQry="select * from tbl_tutorial";
        //out.print(selQry);
        ResultSet rs=con.selectCommand(selQry);
        rs.next();
        
                         %>
                         <h3> <%=rs.getString("tutorial_title")%></h3>
        <table>
            <tr>
                <td>
                   Title <input type="text" name="txt_title">
                </td>
            </tr>
            
            <tr>
                <td>
                   Content   <textarea name="txt_content" placeholder="content" rows="20" cols="70"> </textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="btn_submit">
                </td>
            </tr>
            
        </table>
        </form>
        </body>
</html>

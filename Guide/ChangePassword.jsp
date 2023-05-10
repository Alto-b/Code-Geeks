<%-- 
    Document   : ChangePassword
    Created on : 28 Dec, 2022, 12:05:06 PM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
         <%
            
              if(request.getParameter("btn_submit")!=null)
            { 
                
             
            String sel="select * from tbl_guide where guide_id='"+session.getAttribute("gid")+"'";
            System.out.println(sel);
            ResultSet rs=con.selectCommand(sel);
            rs.next();
            
            
          if(rs.getString("guide_password").equals(request.getParameter("opass")))
          {
              if(request.getParameter("cpass").equals(request.getParameter("npass")))
              {
                  String upQry="update tbl_guide set guide_password='"+request.getParameter("npass")+"'  where guide_id='"+session.getAttribute("gid")+"'";
                      con.executeCommand(upQry);
              }
              else
              {
                  %>
                  <script>
                      alert("password mismatch")
                      window.location="ChangePassword.jsp";
                  </script>
                  <%
              }
          }
              else
              {
               %>
                  <script>
                      alert("incorrect password")
                      window.location="ChangePassword.jsp";
                  </script>
                  <%
              
          }
            }
            %>
    </head>
    <body>
        <h1>Change password</h1>
        <form method="post">
         <table align="center">
            <tr>
                <td>
                    Old password : <input type="text" name="opass" > 
                    
                </td>
            </tr>
            <tr>
                <td>
                    New password :<input type="text" name="npass" > 
                </td>
            </tr>
            <tr>
                <td>
                    Confirm password : <input type="text" name="cpass" > 
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

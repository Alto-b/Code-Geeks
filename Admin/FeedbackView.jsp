<%-- 
    Document   : Feedback
    Created on : 26 Mar, 2023, 2:24:50 PM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Head.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Feedback</title>
    </head>
    <body>
        <h1>User feedbacks</h1>
        
        <table>
            <tr>
                <td>  
                Sl no.
                </td>
                <td>
                    Feedback
                </td>
            </tr>
            <%
                    int i=0;
                String sel="select * from tbl_feedback";
                ResultSet rs=con.selectCommand(sel);
                while(rs.next())
                {
                    i++;
            %>
            <tr>
                <td><%=1%></td>
                <td><%=rs.getString("feedback_content")%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>

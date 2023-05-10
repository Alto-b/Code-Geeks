<%-- 
    Document   : Language
    Created on : 30 Nov, 2022, 3:18:50 PM
    Author     : altob
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
        <title>Language</title>
        <%

            String eid = "", ename = "";

            if (request.getParameter("did") != null) {
                String delQry = "delete from tbl_language where language_id='" + request.getParameter("did") + "'";
                con.executeCommand(delQry);
            }

            if (request.getParameter("eid") != null) {
                String selQry1 = "select * from tbl_language where language_id='" + request.getParameter("eid") + "'";
                //System.out.println(selQry1);
                ResultSet rs1 = con.selectCommand(selQry1);
                rs1.next();
                eid = rs1.getString("language_id");
                ename = rs1.getString("language_name");

            }

        %>  
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>

        <h1 align="center">LANGUAGES</h1>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/LanguageUploadAction.jsp">
            <table align="center">
                <tr>
                    <td>
                        <label>Language</label>
                        <input type="hidden" name="txthid" value="<%=eid%>">
                        <input type="text" name="txt_language" value="<%=ename%>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Photo</label>
                        <input type="file" name="file_photo" />
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <input type="submit" name="save" id="save"/>
                        <input type="reset" name="cancel" id="cancel"/>
                    </td>
                </tr>

            </table>

            <br><br><br>
            <table align="center" border="1">
                <tr>
                    <td>Language</td>
                    <td>Action</td>

                </tr>
                <%
                    String selQry = "select * from tbl_language";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {


                %>
                <tr>
                    <td>
                        <%=rs.getString("language_name")%>
                    </td>

                    <td>
                        <a href="Language.jsp?did=<%=rs.getString("language_id")%>">delete</a>
                        <a href="Language.jsp?eid=<%=rs.getString("language_id")%>">edit</a>

                    </td>
                </tr>
                <%
                    }
                %>


            </table>
        </form>
    </body>
</html>

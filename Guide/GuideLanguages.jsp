<%-- 
    Document   : GuideLanguages
    Created on : 27 Mar, 2023, 6:05:17 PM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="SessionValidator.jsp"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guide | Languages</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <table>
            <tr>
                <%

                    String sel = "select * from tbl_language";
                    ResultSet rs = con.selectCommand(sel);
                    while (rs.next()) {

                        String selQry = "select * from tbl_guide_language where language_id='" + rs.getString("language_id") + "' and guide_id='" + session.getAttribute("gid") + "'";
                        ResultSet rs1 = con.selectCommand(selQry);
                        if (rs1.next()) {
                %>
            <input type="checkbox" name="lang" checked="" onclick="insLang(<%=rs.getString("language_id")%>,'false')"><%=rs.getString("language_name")%><br>
            <%
            } else {
            %>
            <input type="checkbox" name="lang" onclick="insLang(<%=rs.getString("language_id")%>,'true')"><%=rs.getString("language_name")%><br>
            <%
                    }
                }
            %>
            </tr>
        </table>
    </body>
    <script src="../Assets/JQuery/jQuery.js"></script>
    <script>
                function insLang(id,tatus)
                {
                    $.ajax({
                        url: "../Assets/AjaxPages/AjaxLang.jsp?id=" + id+"&status="+tatus,
                        success: function(html) {
                            window.location.reload();
                        }
                    });
                }
    </script>
</html>

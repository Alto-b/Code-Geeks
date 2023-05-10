<%-- 
    Document   : SearchCode
    Created on : 30 Dec, 2022, 1:48:49 PM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search code</title>

    </head>
    <body>
        <h1>Search code</h1>
        <form method="post">
            <table>
                <tr>
                    <td>
                        <input type="text" name="txt_search">
                        <input type="submit" name="btn_search">
                    </td>
                </tr>
            </table>
        </form> 
        <table>

            <%
                if (request.getParameter("btn_search") != null) {
                    String search = request.getParameter("txt_search");
                    String sel = "select * from tbl_code where code_title like '%" + search + "%' ";
                    ResultSet rs1 = con.selectCommand(sel);
                    while (rs1.next()) {

            %>

            <tr>
                <td>
                    <a href="CodeView.jsp?cid=<%=rs1.getString("code_id")%>"> <input type="text" name="txt_code" value="<%=rs1.getString("code_title")%>" style="border: none"></a>
                </td>
            </tr>   
            <%
                    }
                }
            %>

        </tr>
    </table>

</body>
</html>

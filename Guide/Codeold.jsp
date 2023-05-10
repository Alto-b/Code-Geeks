<%-- 
    Document   : Code
    Created on : 8 Dec, 2022, 12:09:21 PM
    Author     : altob
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code</title>
        <%
            String title = "", code = "";
            if (request.getParameter("btn_submit") != null) {
                title = request.getParameter("txt_title");
                code = request.getParameter("txt_content");
                code = code.replaceAll("'", "\\\\");
                
                String insQry = "insert into tbl_code(code_title,code_content,guide_id,language_id,code_date)values('" + title + "','" + code + "','" + session.getAttribute("gid") + "','" + request.getParameter("list_language") + "',curdate()) ";
                out.print(insQry);
                con.executeCommand(insQry);
            }


        %>
    </head>
    <body>
        <h1 align="center">Start with your code</h1>
        <form method="post">
            <table align="center">
                <tr>
                    <td>
                        <label>Language :</label>
                        <select name="list_language">
                            <option>select</option>
                            <%  String sel = "select * from tbl_language l inner join tbl_guide_language g on l.language_id=g.language_id where guide_id='" + session.getAttribute("gid") + "'";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %> <option value="<%=rs.getString("language_id")%>"> <%=rs.getString("language_name")%>   </option>
                            <%
                                }
                            %>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Title:
                        <input type="text" name="txt_title" >
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea name="txt_content" ></textarea>
                    </td>
                </tr>        
                <tr>
                    <td>
                        <input type="submit" name="btn_submit">
                    </td>
                </tr>

                </td>
                </tr>

            </table>
        </form>  
        <br>
        <br>

        <table align="center">
            <tr>
                <td>
                    Title
                </td>
            </tr>
            <tr>
                <td>
                    <%
                        String selQry = "select * from tbl_code where guide_id='" + session.getAttribute("gid") + "' ";
                        ResultSet rs2 = con.selectCommand(selQry);
                        while (rs2.next()) {


                    %>
            <tr>
                <td>
                    <a href="CodeView.jsp?cid=<%=rs2.getString("code_id")%>"> <%=rs2.getString("code_title")%>   </a>
                </td>
            </tr>
            <%
                }
            %>

        </table>
    </body>
</html>

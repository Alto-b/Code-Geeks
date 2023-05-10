<%-- 
    Document   : EditProfile
    Created on : 2 Dec, 2022, 4:43:33 PM
    Author     : altob
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <%

            if (request.getParameter("btn_update") != null) {
                String[] s = request.getParameterValues("box_langauge");

                String delQry = "delete from tbl_guide_language where guide_id='" + session.getAttribute("gid") + "'";
                con.executeCommand(delQry);

                for (int i = 0; i < s.length; i++) {
                    String insqry = "insert into tbl_guide_language(guide_id,language_id)values('" + session.getAttribute("gid") + "','" + s[i] + "')";
                    con.executeCommand(insqry);
                }
                response.sendRedirect("EditProfile.jsp");
            }
            if (request.getParameter("btn_submit") != null) {

                String upQry = "update tbl_guide set user_name='" + request.getParameter("txt_name") + "', user_contact='" + request.getParameter("txt_contact") + "', user_email='" + request.getParameter("txt_email") + "' where guide_id='" + session.getAttribute("gid") + "'";
                con.executeCommand(upQry);

            }
            String sel = "select * from tbl_guide where guide_id='" + session.getAttribute("gid") + "'";
            ResultSet rs = con.selectCommand(sel);
            rs.next();


        %>
    </head>
    <body>
        <h1>Edit Profile</h1>
        <div style="display:flex"> 
            <form>
                <table align="center">
                    <tr>
                        <td>
                            Name : 
                            <input type="text" name="txt_name" value="<%=rs.getString("guide_name")%>">


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email :
                            <input type="text" name="txt_email" value="<%=rs.getString("guide_email")%>">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact :
                            <input type="text" name="txt_contact" value="<%=rs.getString("guide_contact")%>">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="submit" name="btn_submit">
                        </td>
                    </tr>
                </table>
            </form>


            <form method="post">
                <table>
                    <tr>
                        <td>
                            Languages 
                        </td>
                    </tr>


                    <%
                        String sel1 = "select * from tbl_language";
                        ResultSet rs1 = con.selectCommand(sel1);

                        while (rs1.next()) {
                            boolean bol = false;
                            String sel11 = "select * from tbl_guide_language where guide_id = '" + session.getAttribute("gid") + "' and language_id='" + rs1.getString("language_id") + "'";
                            ResultSet rs111 = con.selectCommand(sel11);
                            if (rs111.next()) {
                                bol = true;
                            }

                    %>
                    <tr>
                        <td>
                            <input <%if (bol) {
                                    out.println("checked");
                                }%> type="checkbox" name="box_langauge" value="<%=rs1.getString("language_id")%>"> <%=rs1.getString("language_name")%>
                        </td>

                    </tr>
                    <%
                        }
                    %>

                    <tr>
                        <td>
                            <input type="submit" name="btn_update">
                        </td>
                    </tr>

                </table>
            </form>

        </div>
    </body>
</html>

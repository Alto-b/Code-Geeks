<%-- 
    Document   : Complaint reply
    Created on : 18 Apr, 2023, 5:56:36 PM
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
        <title>Complaints</title>
        <%

            if (request.getParameter("btn_reply") != null) {
                String upQry = "update tbl_complaint set complaint_reply='" + request.getParameter("txt_reply") + "',complaint_status=1 where complaint_id='" + request.getParameter("txt_id") + "' ";
                con.executeCommand(upQry);
                %>
                <script>
                    window.location="ComplaintReply.jsp";
                </script>
                <%
            }
        %>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <div id="main">
            <%
                if (request.getParameter("cid") != null) {

            %>
            <form method="POST">
                <div id="reply">
                    <input type="hidden" name="txt_id" value="<%=request.getParameter("cid")%>"/>
                    <textarea name="txt_reply"></textarea>
                    <input type="submit" name="btn_reply" value="Submit">
                </div>
            </form>
            <%                }

            %>

            <div id="list">
                <table>
                    <%                        String comsel = "select * from tbl_complaint where complaint_status=0";
                        ResultSet rcom = con.selectCommand(comsel);
                        while (rcom.next()) {
                    %>
                    <tr>
                        <td>
                            <%=rcom.getString("complaint_content")%>
                        </td>
                        <td align="center">
                            <input type="hidden" name="txthid" value="<%=rcom.getString("complaint_id")%>">
                            <a href="ComplaintReply.jsp?cid=<%=rcom.getString("complaint_id")%>"><input type="submit" name="btn_reply" value="reply"></a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>


        </div>
    </body>
</html>

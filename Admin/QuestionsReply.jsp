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
                String upQry = "update tbl_question set complaint_reply='" + request.getParameter("txt_reply") + "',question_status=1 where question_id='" + request.getParameter("txt_id") + "' ";
                con.executeCommand(upQry);
                %>
                <script>
                    window.location="QuestionsReply.jsp";
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
                    <%                        String comsel = "select * from tbl_question where question_status=0";
                        ResultSet rcom = con.selectCommand(comsel);
                        while (rcom.next()) {
                    %>
                    <tr>
                        <td>
                            <%=rcom.getString("question_content")%>
                        </td>
                        <td align="center">
                            <input type="hidden" name="txthid" value="<%=rcom.getString("question_id")%>">
                            <a href="QuestionsReply.jsp?cid=<%=rcom.getString("question_id")%>"><input type="submit" name="btn_reply" value="reply"></a>
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

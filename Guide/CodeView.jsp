<%-- 
    Document   : CodeView
    Created on : 28 Dec, 2022, 4:07:49 PM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="SessionValidator.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code view</title>

        <%

            if (request.getParameter("btn_save") != null) {
                String upQry = "update tbl_code set code_content='" + request.getParameter("txt_code").replaceAll("'", "\\\\") + "' where code_id='" + request.getParameter("cid") + "' ";
                con.executeCommand(upQry);

            }
            //out.print()
            if (request.getParameter("btn_answer") != null) {
                String upQry1="update tbl_query set query_reply='"+request.getParameter("txt_queryreply")+"' where query_id='"+request.getParameter("qid")+"' ";
                //out.print("hi");
                con.executeCommand(upQry1);
            }
        %>


    </head>
    <body>
        <h1>Code view</h1>

        <form method="post">
            <div style="display:flex">
            <div> 
                
                <%     
                        if (request.getParameter("cid") != null) {
                        String selQry = "select * from tbl_code where code_id='" + request.getParameter("cid") + "'";
                        ResultSet rs = con.selectCommand(selQry);

                        while (rs.next()) {

                %>
                <br>
                <U><b><%=rs.getString("code_title")%></b></u> 

                <br>
                <br>
                    <textarea name="txt_code" rows="10" cols="50"><%=rs.getString("code_content")%></textarea>     
                    <br>     <input type="submit" name="btn_save">
                <br>
                <%
                
                        }
                    }
                %>
      
            </div>
            
                <div>
                    <br>
                    
                    <table>
                        <tr>
                            <th>Queries</th>
                        </tr>
                        <tr>
                            <td>
                                <textarea name="txt_queryreply" rows="10" cols="50"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                                <input type="submit" name="btn_answer" value="reply">
                            </td>
                        </tr>
                    </table>
                </div>
                <div>
                    <table> 
                            <%
                             String selQry = "select * from tbl_query where code_id='" + request.getParameter("cid") + "'";
                        ResultSet rs = con.selectCommand(selQry);

                        while (rs.next()) {

                %>
                <tr>
                            <td>
                                <a href="CodeView.jsp?qid=<%=rs.getString("query_id")%>"> <%=rs.getString("query_content")%>   </a>
                                
                            </td>
                            <% } %>
                        </tr>
                        
                        
                    </table>
               
                </div>
            </div>
                        
                        
        </form>
    </body>
</html>

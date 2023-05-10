<%-- 
    Document   : AjaxSearch
    Created on : 2 Feb, 2023, 10:33:04 AM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                    String search="'"+request.getParameter("cid")+"'";

                    String sel = "select * from tbl_code where code_title like '%" + search + "%' ";
                    ResultSet rs1 = con.selectCommand(sel);
                    while (rs1.next()) {

            %>

                    <a href="CodeView.jsp?cid=<%=rs1.getString("code_id")%>"> <input type="text" name="txt_code" value="<%=rs1.getString("code_title")%>" style="border: none"></a>

            <%
                    }
                
            %>
<%-- 
    Document   : AjaxSearch
    Created on : 2 Feb, 2023, 10:33:04 AM
    Author     : USER
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<%
    String search = request.getParameter("did");
    //out.print(search);
    if (!search.equals("")) {
        String sel = "select * from tbl_code where code_title like '%" + search + "%' ";
        //out.print(sel);
        ResultSet rs1 = con.selectCommand(sel);
        while (rs1.next()) {

%>
<option alt="<%=rs1.getString("code_id")%>" data-value="<%=rs1.getString("code_id")%>" value="<%=rs1.getString("code_title")%>"></option>







<%
        }
    }
%>

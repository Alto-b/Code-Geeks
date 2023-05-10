
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String ins = "update tbl_subsbooking set assign_status='1',guide_id='" + request.getParameter("gid") + "' where booking_id='" + request.getParameter("id") + "'";
    con.executeCommand(ins);


%>
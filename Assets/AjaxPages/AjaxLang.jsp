<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%

    if (request.getParameter("status").equals("true")) {
        String id = request.getParameter("id");
        String ins = "insert into tbl_guide_language(language_id,guide_id)"
                + "values('" + id + "','" + session.getAttribute("gid") + "')";
        con.executeCommand(ins);
    }
    else
    {
        String id = request.getParameter("id");
        String del = "delete from tbl_guide_language where language_id ='" + id + "' and guide_id='" + session.getAttribute("gid") + "'";
        System.out.println(del);
        con.executeCommand(del);
    }


%>
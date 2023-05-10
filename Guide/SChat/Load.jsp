<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_schat where from_user_id='" + request.getParameter("id") + "' or to_user_id='" + request.getParameter("id") + "' order by schat_id";
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {

        if (rs.getString("from_guide_id").equals(session.getAttribute("gid"))) {
            String sel = "select * from tbl_guide where guide_id='" + rs.getString("from_guide_id") + "'";
            ResultSet z = con.selectCommand(sel);
            if (z.next()) {

%>

<div class="chat-message is-sent">
    <img src="<%=z.getString("guide_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("guide_name")%>(You)</span>
        <div class="message-text"><%=rs.getString("schat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>

<%
    }

} else if (rs.getString("to_guide_id").equals(session.getAttribute("gid"))) {
    String sel = "select * from tbl_user where user_id='" + rs.getString("from_user_id") + "'";
    ResultSet z = con.selectCommand(sel);
    if (z.next()) {
%>
<div class="chat-message is-received">
    <img src="<%=z.getString("user_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("user_name")%>(Guide)</span>
        <div class="message-text"><%=rs.getString("schat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%
            }

        }
    }


%>
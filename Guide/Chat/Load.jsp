<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_chat";
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {

        if (rs.getString("guide_id").equals(session.getAttribute("gid"))) {
            String sel = "select * from tbl_user where user_id='" + rs.getString("user_id") + "'";
            ResultSet z = con.selectCommand(sel);
            if (z.next()) {
%>
<div class="chat-message is-sent">
    <img src="<%=z.getString("user_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("user_name")%>(You)</span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>

<%
    }

} else if (rs.getString("guide_id").equals("0")) {
    String sel = "select * from tbl_user where user_id='" + rs.getString("user_id") + "'";
    ResultSet z = con.selectCommand(sel);
    if (z.next()) {
%>
<div class="chat-message is-received">
    <img src="<%=z.getString("user_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("user_name")%>(User)</span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%
    }

} else if (rs.getString("user_id").equals("0")) {
    String sel = "select * from tbl_guide where guide_id='" + rs.getString("guide_id") + "'";
    ResultSet z = con.selectCommand(sel);
    if (z.next()) {
%>
<div class="chat-message is-received">
    <img src="<%=z.getString("guide_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("guide_name")%>(Guide)</span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%
            }

        }
    }


%>
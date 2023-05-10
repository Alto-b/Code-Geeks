<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
    String search_query = request.getParameter("text");
    String[] search_words = search_query.split("\\s+");
    String sel = "select * from tbl_code c inner join tbl_guide g on g.guide_id=c.guide_id inner join tbl_language l on l.language_id=c.language_id  where true ";
         
    for (String word : search_words) {
        sel += " and c.code_title like '%" + word + "%'";
    }
    ResultSet rs1 = con.selectCommand(sel);
    while (rs1.next()) {

%>

<div class="tipue_drop_box">
    <div id="tipue_drop_wrapper">
        <a href="CodeView.jsp?cid=<%=rs1.getString("code_id")%>">
            <div class="tipue_drop_item">
                <div class="tipue_drop_left">
                    <img src="../Assets/Files/GuidePhotofile_photo1018.png" class="tipue_drop_image">
                </div>
                <div class="tipue_drop_right">
                    <%=rs1.getString("language_name")%>
                    <div>
                        <small>
                            <%=rs1.getString("code_title")%>
                        </small>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div> 
<%    }
%>
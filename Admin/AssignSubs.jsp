<%-- 
    Document   : AssignSubs
    Created on : 27 Mar, 2023, 11:56:28 AM
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Assign guides</h1>

        <table>
            <tr>
                <td>
                    Subscriber
                </td>
                <td>
                    Title
                </td>
                <td>
                    Date
                </td>
                <td>
                    Language
                </td>
                
                <td>
                    Guides
                </td>
                
            </tr>
            <%
                String sel = "select * from tbl_subsbooking b inner join tbl_subs s on s.sub_id=b.sub_id inner join tbl_user u on u.user_id=b.user_id inner join tbl_language l on l.language_id=s.sub_language";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
            %>
            <tr>
                <td>
                    <%=rs.getString("user_name")%>
                </td>
                <td>
                    <%=rs.getString("sub_name")%>
                </td>
                <td>
                    <%=rs.getString("sub_date")%>
                </td>
                <td>
                    <%=rs.getString("language_name")%>
                </td>
                
                <td>
                    <select name="list_guide" onchange="assignGuide(this.value,<%=rs.getString("booking_id")%>)">
                        <option value="0">select</option>
                        <%
                            String sel1 = "select * from tbl_guide g inner join tbl_guide_language l on g.guide_id=l.guide_id where language_id='" + rs.getString("language_id") + "' ";
                            ResultSet rs1 = con.selectCommand(sel1);
                            while (rs1.next()) {
                                String sel11 = "select * from tbl_subsbooking where guide_id='" + rs1.getString("guide_id") + "' and booking_id='" + rs.getString("booking_id") + "'";
                               
                                ResultSet rs11 = con.selectCommand(sel11);
                                if (rs11.next()) {
                                    
                        %> 
                        <option selected value="<%=rs1.getString("guide_id")%>"> <%=rs1.getString("guide_name")%>   </option>
                        <%
                        } else {
                        %> 
                        <option value="<%=rs1.getString("guide_id")%>"> <%=rs1.getString("guide_name")%>   </option>
                        <%
                                }

                            }
                        %>


                    </select>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>

    <script src="../Assets/JQuery/jQuery.js"></script>
    <script>
                        function assignGuide(gid, id)
                        {

                            $.ajax({
                                url: "../Assets/AjaxPages/AjaxAssign.jsp?gid=" + gid + "&id=" + id,
                                success: function(html) {
                                    window.location.reload();
                                }
                            });

                        }
    </script>
</html>

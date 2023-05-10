<%-- 
    Document   : Tutorials
    Created on : 11 Feb, 2023, 9:33:01 AM
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
        <title>Tutorials</title>
    </head>
    <body>
        <h1>Tutorials</h1>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/TutorialUploadAction.jsp">
        <table align="center">
            <tr>
                <td>
                    Title
                </td>
                <td>
                    <input type="text" name="txt_title">
                </td>
            </tr>
            <tr>
                <td>
                    Logo
                </td>
                <td>
                    <input type="file" name="file_poster">
                </td>
            </tr>
            <tr>
                <td>
                    Language
                </td>
                <td>
                    <select name="list_language">
                            <option>select</option>
                            <%  String sel="select * from tbl_language";
                                ResultSet rs1=con.selectCommand(sel);
                                 while(rs1.next())
                                {
                                    %> <option value="<%=rs1.getString("language_id")%>"> <%=rs1.getString("language_name")%>   </option>
                            <%
                                }
                            %>

                        </select>
                </td>
            </tr>
            <tr align="center" colspan="2">
                <td>
                    <input type="submit" name="btn_submit">
                </td>
                <td></td>
            </tr>
            
        </table>
        </form>
                            <table align="center">
                                <tr>
                                    <td>
                                    Sl.no
                                    </td>
                                    <td>
                                        Title
                                    </td>
                                    <td>
                                        Language
                                    </td>
                                     <td>
                                        poster
                                    </td>
                                </tr>
             <%
       int i=0;
          String selQry="select * from tbl_tutorial t inner join tbl_language l on t.language_id=l.language_id   ";
        //out.print(selQry);
        ResultSet rs=con.selectCommand(selQry);
        while(rs.next())
        { 
           i++;
                                %>
                                <tr>
                                    <td>
                                  <%= i%>
                                    </td>
                                    <td>
                                       <%=rs.getString("tutorial_title")%>
                                    </td>
                                    <td>
                                        <%=rs.getString("language_name")%>
                                    </td>
                                     <td>
                                        <%=rs.getString("tutorial_poster")%>
                                    </td>
                                    <td>
                                         <a href="TutorialContent.jsp?eid=<%=rs.getString("tutorial_id")%>">Add/Edit</a>
                                    </td>
                 <%
        }
                  %>
                                </tr>
                            </table>
    </body>
</html>

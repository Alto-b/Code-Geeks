<%-- 
    Document   : Subscriptions
    Created on : 21 Jan, 2023, 10:26:15 AM
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
        <title>Subscriptions</title>
        <%
        if(request.getParameter("did")!=null)
        {
            String delQry="delete from tbl_subs where sub_id='"+request.getParameter("did")+"'";
            con.executeCommand(delQry);
        }
        %>
    </head>
    <body>
        <h1 align="center">Subscriptions</h1>
        
         <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/SubsUploadAction.jsp">
        <table align="center">
            <tr>
                <td>
                    Title:
                </td>
                <td>
                    <input type="text" name="txt_name">
                </td>
            </tr>
                <td>
                    Logo:
                </td>
                <td>
                    <input type="file" name="file_logo">
                </td>
            </tr>
            
            <tr>
                <td>
                    Language:
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
            <tr>
                <td>
                    Duration:
                </td>
                <td>
                    <input type="number" name="duration">days
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea name="txtx_details" rows="10" cols="50" placeholder="Enter details"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    Amount:
                </td>
                <td>
                    <input type="text"  name="txt_amount">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" name="btn_submit">
                
                    <input type="reset" name="btn_reset">
                </td>
            </tr>
        </table>
        </form>
                            
                            <br> <br><br>
                           
                            <table align="center">
                                <tr>
                                    <td>
                                         Title:  
                                    </td>
                                    <td>
                                          Logo:  
                                    </td>
                                    <td>
                                        language:  
                                    </td>
                                    <td>
                                        Duration:  
                                    </td>
                                    <td>
                                        Details:      
                                    </td>
                                    <td>
                                        Amount:  
                                    </td>
                                    <td>
                                        
                                    </td>
                                    
                                </tr>
   <%
        String selQry="select * from tbl_subs s inner join tbl_language l on s.sub_language=l.language_id  ";
        //out.print(selQry);
        ResultSet rs=con.selectCommand(selQry);
        while(rs.next())
        {
            %>  
            <tr>
                <td>
                <%=rs.getString("sub_name")%>
                </td>
                <td>
                    <img src="../Assets/Files/LangLogo/<%=rs.getString("sub_logo")%>" width="150" height="150">
                </td>
                <td>
                <%=rs.getString("language_name")%>
                </td>
                <td>
                <%=rs.getString("sub_duration")%>
                </td>
                <td>
                <%=rs.getString("sub_details")%>
                </td>
                <td>
                <%=rs.getString("sub_amount")%>
                </td>
                <td>
                    <a href="Subscriptions.jsp?did=<%=rs.getString("sub_id")%>"><img src="../Assets/Files/Posters/remove-24.png"></a>
                </td>
                
            </tr>
            <%
        }
        %>
                                
                            </table>
    </body>
</html>

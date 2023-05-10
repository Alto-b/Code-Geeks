<%-- 
    Document   : GuideVerification
    Created on : 14 Jan, 2023, 10:19:51 AM
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
        <title>Guide verification </title>
    <%
            if(request.getParameter("aid")!=null)
        {
            String upQry="update tbl_guide set guide_status=1 where guide_id='"+request.getParameter("aid")+"' " ;
            con.executeCommand(upQry);
            response.sendRedirect("GuideVerification.jsp");
                   
        }
            if(request.getParameter("rid")!=null)
        {
            String upQry1="update tbl_guide set guide_status=2 where guide_id='"+request.getParameter("rid")+"' " ;
            con.executeCommand(upQry1);
             response.sendRedirect("GuideVerification.jsp");
        }
     %>
    </head>
    <body>
        <h1>Guide List  </h1>
        
        <table>
            
            <tr>
                <td>
                    Sl.no
                </td>
                <td>
                    Name 
                </td>
                <td>
                    Email
                </td>
                <td>
                    Contact
                </td>
                <td>
                    Status
                </td>
                
            </tr>
            <tr>
                <td>
                    
                </td>
            </tr>
            <%
            int i=0;
        String sel1="select * from tbl_guide where guide_status=1";
          ResultSet rs1=con.selectCommand(sel1);
       
       while(rs1.next())    
        {
            i++;
            %>
            <tr>
                <td>
                   <%=i %>
                </td>
                 <td>
                <%=rs1.getString("guide_name")%>
            </td>
             <td>
                <%=rs1.getString("guide_email")%>
            </td>
             <td>
                <%=rs1.getString("guide_contact")%>
            </td>
             <td>
                <%=rs1.getString("guide_status")%>
            </td>
            
            </tr>
            
            
            <%
        }
        %>
        </table>
       
    </body>
</html>

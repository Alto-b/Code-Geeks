<%-- 
    Document   : District
    Created on : 24 Nov, 2022, 2:01:58 PM
    Author     : altob
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Head.jsp"%>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>District</title>
        <%
            
            String eid="",ename="";
        if(request.getParameter("save")!=null)
        {
            if(!request.getParameter("txthid").equals(""))
            {
                String upQry="update tbl_district set district_name='"+request.getParameter("txt_district")+"' where district_id='"+request.getParameter("txthid")+"' ";
                con.executeCommand(upQry);
                
            }
            else
            {
            String district=request.getParameter("txt_district");
            String insQry="insert into tbl_district(district_name)values('"+district+"')";
            con.executeCommand(insQry);
            }
        }
        if(request.getParameter("did")!=null)
        {
            String delQry="delete from tbl_district where district_id='"+request.getParameter("did")+"'";
            con.executeCommand(delQry);
        }
       
        if(request.getParameter("eid")!=null)
        {
           String selQry1="select * from tbl_district where district_id='"+request.getParameter("eid")+"'";
           //System.out.println(selQry1);
           ResultSet rs1=con.selectCommand(selQry1);
           rs1.next();
           eid=rs1.getString("district_id");
           ename=rs1.getString("district_name");
           
        }
    
        
        
          

       %>  
    </head>
    <body >
        <br>
        <br>
        <br>
        <br>
        <div class="district" >
<!--        <h1 align="center">DISTRICT</h1>-->
        <form method="post">
            <table align="center">
                <tr>
                    <td>
                        <label>District</label>
                        <input type="hidden" name="txthid" value="<%=eid%>">
                               <input type="text" name="txt_district" value="<%=ename%>"/>
                    </td>
                </tr>
                <tr align="center">
                    <td>
                       <input type="submit" name="save" id="save"/>
                        <input type="reset" name="cancel" id="cancel"/>
                    </td>
                </tr>
                
            </table>
            
            <br><br><br>
            <table align="center" border="1">
                <tr>
                    <td>District</td>
                    <td>Action</td>
                    
                </tr>
          <%
        String selQry="select * from tbl_district";
        ResultSet rs=con.selectCommand(selQry);
        while(rs.next())
        {
            
        
        
        %>
        <tr>
            <td>
                <%=rs.getString("district_name")%>
            </td>
                
            <td>
                <a href="District.jsp?did=<%=rs.getString("district_id")%>">delete</a>
                   <a href="District.jsp?eid=<%=rs.getString("district_id")%>">edit</a>
                   
            </td>
        </tr>
         <% 
        }
        %>
        
          
               
                
            </table>
        </form>
        </div>
   
    </body>
   
</html>

<%-- 
    Document   : Place
    Created on : 29 Nov, 2022, 1:28:48 PM
    Author     : altob
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
        <title>Place</title>
        <%

            String eid = "", ename = "";
            if (request.getParameter("save") != null) {
                if (!request.getParameter("txthid").equals("")) {
                    String upQry = "update tbl_place set place_name='" + request.getParameter("txt_place") + "' where place_id='" + request.getParameter("txthid") + "' ";
                    con.executeCommand(upQry);

                } else {
                    String place = request.getParameter("txt_place");
                    String insQry = "insert into tbl_place(place_name,district_id)values('" + place + "','" + request.getParameter("list_district") + "')";
                    con.executeCommand(insQry);
                }
            }
            if (request.getParameter("did") != null) {
                String delQry = "delete from tbl_place where place_id='" + request.getParameter("did") + "'";
                con.executeCommand(delQry);
            }

            if (request.getParameter("eid") != null) {
                String selQry1 = "select * from tbl_place where place_id='" + request.getParameter("eid") + "'";
                //System.out.println(selQry1);
                ResultSet rs1 = con.selectCommand(selQry1);
                rs1.next();
                eid = rs1.getString("place_id ");
                ename = rs1.getString("place_name");

            }


        %>  
    </head>
    <body>


        <!--<h1 align="center">PLACE</h1>-->
        <div class="place" align="center">
            <form method="post">

                <table align="center" >
                    <tr>
                        <td>
                            <label>District</label>
                            <select name="list_district">
                                <option>select</option>
                                <%  String sel = "select * from tbl_district";
                                    ResultSet rs1 = con.selectCommand(sel);
                                    while (rs1.next()) {
                                %> <option value="<%=rs1.getString("district_id")%>"> <%=rs1.getString("district_name")%>   </option>
                                <%
                                    }
                                %>


                            </select>
                    </tr>
                    <tr>
                        <td>
                            <label>Place</label>
                            <input type="hidden" name="txthid" value="<%=eid%>">
                            <input type="text" name="txt_place" value="<%=ename%>"/>
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
                        <td>Place</td>
                        <td>Action</td>

                    </tr>
                    <%
                        String selQry = "select * from tbl_place p inner join tbl_district d on d.district_id=p.district_id  ";
                        ResultSet rs = con.selectCommand(selQry);
                        while (rs.next()) {


                    %>

                    <tr>
                        <td>
                            <%=rs.getString("district_name")%>
                        </td>
                        <td>
                            <%=rs.getString("place_name")%>
                        </td>

                        <td>
                            <a href="Place.jsp?did=<%=rs.getString("place_id")%>">delete</a>
                            <a href="Place.jsp?eid=<%=rs.getString("place_id")%>">edit</a>

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


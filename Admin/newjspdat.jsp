<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%
    LocalDate currentDate = LocalDate.now();
    String givenDateString = "2023-01-27";
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    LocalDate givenDate = LocalDate.parse(givenDateString, formatter);
    long daysDifference = ChronoUnit.DAYS.between(givenDate, currentDate);
    out.println(daysDifference);
%>
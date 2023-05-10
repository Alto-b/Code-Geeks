<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("gid") == null)
        {
            response.sendRedirect("../");
        }
    %>
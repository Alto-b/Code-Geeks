<!DOCTYPE html>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <html>
        <head>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/codemirror.min.css" />
            <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/codemirror.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/mode/clike/clike.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/addon/edit/matchbrackets.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/addon/selection/active-line.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/addon/fold/foldcode.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/addon/fold/foldgutter.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.63.0/addon/fold/foldgutter.min.css" />
            <style>
                html {
                    overflow:   scroll;
                }

                ::-webkit-scrollbar {
                    width: 0px;
                    background: transparent; /* make scrollbar transparent */
                }
            </style>
        </head>
        <body>
        <%
            String sel = "select * from tbl_code c inner join tbl_guide g on g.guide_id=c.guide_id inner join tbl_language l on l.language_id=c.language_id  where code_id='" + request.getParameter("id") + "' ";
            ResultSet rs = con.selectCommand(sel);
            if (rs.next()) {
        %>
        <textarea id="code" class="code"><%=rs.getString("code_content")%></textarea>
        <%
            }
        %>
        <script>
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: false,
                matchBrackets: true,
                styleActiveLine: true,
                gutters: ["CodeMirror-foldgutter"],
                foldGutter: true,
                mode: "text/x-java",
                extraKeys: {
                    Tab: function(cm) {
                        var spaces = Array(cm.getOption("indentUnit") + 1).join(" ");
                        cm.replaceSelection(spaces);
                    }
                }
            });

            var lines = editor.lineCount();
            for (var i = 0; i < lines; i++) {
                editor.autoFormatRange({line: i, ch: 0}, {line: i + 1, ch: 0});
            }
        </script>
    </body>
</html>

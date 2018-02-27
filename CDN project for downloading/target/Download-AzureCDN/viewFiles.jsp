<%-- 
    Document   : viewFiles.jsp
    Created on : 12 Apr, 2017, 12:50:12 AM
    Author     : Asaad Aman
--%>

<%@ page import="java.io.*"%>
<html>
<table>
<tr><th>File Name</th><th>Download File</th>
<%
File f = new File("C:/xampp/tomcat/webapps/securecloud/uploads/downloads");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
%>
<tr><td><%=name%></td><td><a href="download.jsp?f=<%=path%>">Download File</a></td></tr>
     <%
        }
%>
</table>
</html>

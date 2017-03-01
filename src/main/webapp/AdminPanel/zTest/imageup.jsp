<%-- 
    Document   : imageup
    Created on : Jan 10, 2016, 4:31:13 PM
    Author     : malitha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" enctype="multipart/form-data"
              action="http://localhost:8080/AutosupportServices/rest/employeeservices/fileservice/uploadcustomerimage">
            File to upload: <input type="file" name="upfile"><br/>
            Notes about the file: <input type="text" name="note" value="2"><br/>
            <br/>
            <input type="submit" value="Press"> to upload the file!
        </form>

    </body>
</html>

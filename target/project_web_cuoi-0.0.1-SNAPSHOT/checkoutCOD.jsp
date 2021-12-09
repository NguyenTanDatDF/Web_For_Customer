<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1> ${id}</h1> </br>
  <h1> ${name}</h1> </br>
 ${brand_code} </br>
  ${category_code} </br>
   ${picture_url} </br>
    ${price} </br>
     ${quatity} </br>
      ${description }</br>
      
       ${oldprice}</br>
       ${oldpicture}</br>
       ....
       ${a}
       ${action}
        ${b}
        ${id_user}
        
      
        
     <c:redirect url = "Test"/>
</form>
</body>
</html>
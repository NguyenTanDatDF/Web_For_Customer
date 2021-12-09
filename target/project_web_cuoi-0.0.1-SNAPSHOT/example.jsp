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
 <c:forEach var="item" items="${listProduct}">
            <tbody>
              <tr>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.name}</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.brand_code}</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.quatity}</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.price}$</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.quatity*item.price}$</p>
                  </div>
                </td>
              </tr>
              <tr>
                <td colspan="4">
                  <div class="shopping__cart__component">
                    <p style="float: right;">Shipping fee</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.quatity*1}$</p>
                  </div>
                </td>
              </tr>
              <tr>
                <td colspan="4">
                  <div class="shopping__cart__component">
                    <p style="float: right;">Sub-Total</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p>${item.quatity*item.price+item.quatity*1}$</p>
                  </div>
                </td>
              </tr>
              <tr>
                <td colspan="4">
                  <div class="shopping__cart__component">
                    <p style="float: right;">Total</p>
                  </div>
                </td>
                <td>
                  <div class="shopping__cart__component">
                    <p style="color: red;">${item.quatity*item.price+item.quatity*1}$</p>
                  </div>
                </td>
              </tr>
            </tbody>
                </c:forEach>
</body>
</html>
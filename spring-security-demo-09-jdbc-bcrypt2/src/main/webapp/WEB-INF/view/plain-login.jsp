<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>custom login page</title>
</head>
<body>
<h3>My Custom Login Page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
                    method="POST">
                    
                    <!-- check for login error -->
                    <c:if test="${param.error!=null}">
                    <i>Sorry you entered wrong credentials</i>
                    </c:if>
          <p>
          user name: <input type="text" name="username"/>
          </p>
           <p>
          password: <input type="password" name="password"/>
          </p>
         <input type="submit" value="login"/> 
          
</form:form>


</body>
</html>
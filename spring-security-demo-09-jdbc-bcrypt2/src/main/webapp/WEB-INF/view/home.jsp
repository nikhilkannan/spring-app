<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title> welcome to the company</title>
</head>

<body>
<p>
welcome to the new company
</p>

<hr>
<!-- display user name and roles -->
      <p>
           user:<security:authentication property="principal.username"/>
           <br><br>
           Roles:<security:authentication property="principal.authorities"/>
       </p>
 <hr> 
 
        <security:authorize access="hasRole('MANAGER')">
 <!-- add a link to point to /leaders  ...this is for managers --> 
         <p>
         <a href="${pageContext.request.contextPath}/leaders">leadership meeting</a>
         
         
         </p>
         </security:authorize>
         
         <security:authorize access="hasRole('ADMIN')">
         
  <!-- add a link to point to /systems  ...this is for admins --> 
         <p>
         <a href="${pageContext.request.contextPath}/systems">administrator's meeting</a>
         
         
         </p>
         </security:authorize>
           

<!-- add the logout button -->
<form:form action="${pageContext.request.contextPath}/logout" method="POST">


<input type="submit" value="logout"/>

</form:form>

</body>
</html>
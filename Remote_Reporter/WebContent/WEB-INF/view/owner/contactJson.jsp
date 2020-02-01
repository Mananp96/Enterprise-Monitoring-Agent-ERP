<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:forEach items="${sessionScope.contactlist}" var="i">
[ { 
      "ContactName": "${i.FirstName}" ,
 		} ]
</c:forEach>

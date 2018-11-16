<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:forEach   items="${sessionScope.edittask}" var="i">
[ { "id": "${i.taskid}" ,
 "taskName": "${i.taskName}" ,
  "category": "${i.category}" ,		
   "milestone": "${i.milestone}" ,
    "closeDate": "${i.closeDate}" ,
     "taskTime": "${i.taskTime}" ,
     "ownerName": "${i.ownerCompanyVo.companyid}" ,
     "contactName": "${i.ownerContactVo.contactid}" ,
     "taskStatus": "${i.taskStatus}" ,
     "taskPriority": "${i.taskPriority}" ,
      "tags": "${i.tags}" ,
 		"taskDesc": "${i.taskDesc}"} ]
</c:forEach> 		
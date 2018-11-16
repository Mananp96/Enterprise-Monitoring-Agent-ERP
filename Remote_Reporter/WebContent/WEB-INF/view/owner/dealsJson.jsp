<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:forEach   items="${sessionScope.editdeal}" var="i">
[ { "id": "${i.dealid}" ,
 "dealName": "${i.dealName}" ,
  "ownerName": "${i.ownerCompanyVo.companyid}" ,
  "dealValue": "${i.dealValue}" ,		
   "milestone": "${i.milestone}" ,
    "closeDate": "${i.closeDate}" ,
     "contactName": "${i.ownerContactVo.contactid}" ,
      "tags": "${i.tags}" ,
 		"dealDesc": "${i.dealDesc}"} ]
</c:forEach> 		
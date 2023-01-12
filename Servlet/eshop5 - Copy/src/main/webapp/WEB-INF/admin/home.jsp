<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>MultiShop - Online Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <jsp:include page="/WEB-INF/customer/layout.jsp"></jsp:include>
</head>

<body>

<jsp:include page="/WEB-INF/admin/layout/topnav.jsp">
    <jsp:param name="totalUser" value="${applicationScope.listUser.size()}"/>
    <jsp:param name="totalCustomer" value="${applicationScope.listCustomer.size()}"/>
    <jsp:param name="totalProduct" value="${applicationScope.listProduct.size()}"/>
    <jsp:param name="totalOrder" value="${applicationScope.listOrder.size()}"/>
</jsp:include>

<!-- Breadcrumb Start -->

<!-- Cart Start -->
<!-- Cart End -->
<!-- Footer Start -->

<jsp:include page="/WEB-INF/customer/footer.jsp"></jsp:include>
<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


</body>

</html>
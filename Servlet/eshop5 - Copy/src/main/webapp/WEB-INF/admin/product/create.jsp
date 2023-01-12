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
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            <nav class="breadcrumb bg-light mb-30">
                <a class="breadcrumb-item text-dark" href="/product">List Product</a>
                <%--                                <a class="breadcrumb-item text-dark" href="/user?action=viewHistoryOrder">Order History</a>--%>
                <span class="breadcrumb-item active">Add Product</span>
            </nav>
        </div>
    </div>
</div>

<div class="toast" data-autohide="true" style="position: fixed; top: 10px; right: 10px; z-index: 1000000">
    <div class="toast-header">
        <strong class="mr-auto text-primary">Product Manager</strong>
        <small class="text-muted">1 mins ago</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
    </div>
    <div class="toast-body">
        Edit success....ahii
    </div>
</div>
<c:if test="${requestScope.message!=null}">
    <script>
        $(document).ready(function(){
            let message = '<%= request.getAttribute("message")%>';
            document.querySelector(".toast-body").innerText = message;
            $('.toast').toast({delay: 5000});
            $('.toast').toast('show');
        });
    </script>
</c:if>

<!-- Breadcrumb End -->

<!-- Cart Start -->
<div class="container-fluid">
    <div class="toast" data-autohide="true" style="position: fixed; top: 10px; right: 10px; z-index: 1000000">
        <div class="toast-header">
            <strong class="mr-auto text-primary">Product Manager</strong>
            <small class="text-muted">1 mins ago</small>
            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
        </div>
        <div class="toast-body">
            Edit success....ahii
        </div>
    </div>
    <c:if test="${requestScope.message!=null}">
        <script>
            $(document).ready(function(){
                let message = '<%= request.getAttribute("message")%>';
                document.querySelector(".toast-body").innerText = message;
                $('.toast').toast({delay: 5000});
                $('.toast').toast('show');
            });
        </script>
    </c:if>
    <form  method="post">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Edit Product</span>
                </h5>
                <div class="bg-light p-30 mb-5">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Product Name</label>
                            <input  name="productName" class="form-control" type="text" placeholder="T-Shirt" >
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Price</label>
                            <input  name="price" class="form-control" type="number" placeholder="$120">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Quantity</label>
                            <input  name="quantity" class="form-control" type="number" placeholder="9999" >
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Description</label>
                            <input  name="description" class="form-control" type="text" placeholder="Blue" >
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Picture</label>
                            <input id="image" onchange="chooseFile()" name="image" class="form-control" type="text"  >
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <h5 class="section-title position-relative text-uppercase mb-3"><span
                        class="bg-secondary pr-3"></span></h5>
                <div class="bg-light p-30 mb-5">
                    <img id="imageProduct" src="https://duongphi.com/wp-content/uploads/2020/10/2021_12_04_17_09_IMG_7352.png"  alt="image" style="width: 100%;height: 330px;">
                </div>
                <div class="mb-5" style="margin-top: -2rem !important;">
                    <div class="bg-light p-30">
                        <button class="btn btn-block btn-primary font-weight-bold py-3">Create</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- Cart End -->
<!-- Footer Start -->

<jsp:include page="/WEB-INF/customer/footer.jsp"></jsp:include>
<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

<script>
    function handleLimitEntries() {
        let limitEntries = document.getElementById("idSlLimitEntries").value;
        let txtSearch = document.getElementById("idTxtSearch").value;

        <%--let url = `/user?table4_length=${limitEntries}&q=${txtSearch}`;--%>
        <%--console.log(url)--%>
        let url1 = "/user?table4_length=" + limitEntries + "&q=" + txtSearch;
        window.location.assign(url1)
    }
</script>
</body>

</html>
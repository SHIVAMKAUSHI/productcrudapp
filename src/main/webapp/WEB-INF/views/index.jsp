<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="./base.jsp"%>
</head>
<body>
    <div class="container mt-3">
        <h1 class="text-center">Welcome to Product App</h1>
        <div class="row">
            <div class="col-12">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">S.No.</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="item" items="${products}">
                    <tr>
                        <th scope="row">TECHONLY${item.id}</th>
                        <td>${item.name}</td>
                        <td>${item.description}</td>
                        <td class="font-weight-bold">&#x20b9 ${item.price}</td>
                        <td><a href="${pageContext.request.contextPath}/delete-product/${item.id}"><i class="fa-solid fa-trash text-danger"></i></a><a
                                href="${pageContext.request.contextPath}/update-product/${item.id}"><i class="fa-solid fa-pen-nib ml-3 text-success"></i></a></td>

                    </tr>
                    </c:forEach>

                    </tbody>
                </table>

            </div>
            
        </div>
    </div>
    <div class="container mt-1 text-center">
        <a href="${pageContext.request.contextPath}/add-product" class="btn btn-outline-success">Add Product </a>
    </div>

</body>
</html>

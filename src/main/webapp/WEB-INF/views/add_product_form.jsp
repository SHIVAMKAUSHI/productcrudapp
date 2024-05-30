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
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h1 class="text-center mb-3">Fill the product detail</h1>
                <form action="handle-product" method="post">
                    <div class="form-group">
                        <label for="name">Product Name</label>
                        <input id="name" name="name" class="form-control" type="text" placeholder="Enter the product name here" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="description">Product Description</label>
                        <textarea name="description" id="description" rows="5" placeholder="Enter the product description" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="price">Product Price</label>
                        <input type="text" id="price" name="price" placeholder="Enter Product Price" class="form-control">
                    </div>
                    <div class="container text-center">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
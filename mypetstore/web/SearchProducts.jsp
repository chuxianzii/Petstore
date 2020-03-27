<%@ include file="includeTop.jsp"%>

<div id="BackLink">
    <a href="main.jsp">Return to Main Menu</a>
</div>

<div id="Catalog">

    <table>
        <th>&nbsp;</th>
        <th>Product ID</th>
        <th>Name</th>
        </tr>
        <c:forEach var="product" items="${sessionScope.productList}">
            <tr>
                <td>
                    <a href="viewID?productId=${product.productId}">${product.description}</a>
                </td>
                <td><b>
                    <a href="viewID?productId=${product.productId}"><font color="BLACK"> ${product.productId} </font></a>
                </b></td>
                <td>${product.name}</td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
        </tr>

    </table>

</div>

<%@ include file="IncludeBottom.jsp"%>  <tr>

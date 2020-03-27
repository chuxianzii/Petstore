<%@ include file="includeTop.jsp"%>

<div id="BackLink">
    <a href="main">Return to Main Menu</a>
</div>

<div id="Catalog">

    <div id="Cart">

        <h2>Shopping Cart</h2>

        <table id="Order">
            <tr>
                <th><b>Item ID</b></th>
                <th><b>Product ID</b></th>
                <th><b>Description</b></th>
                <th><b>In Stock?</b></th>
                <th><b>Quantity</b></th>
                <th><b>List Price</b></th>
                <th><b>Total Cost</b></th>
                <th>&nbsp;</th>
            </tr>

            <c:if test="${sessionScope.cart.numberOfItems == 0}">
                <tr>
                    <td colspan="8"><b>Your cart is empty.</b></td>
                </tr>
            </c:if>

            <c:forEach var="addItem" items="${sessionScope.cartlist}">
                <tr>
                    <td>
                        <a href="viewItem?itemId=${addItem.itemID}">${addItem.itemID}</a>
                    </td>
                    <td>
                            ${addItem.item.product.productId}
                    </td>
                    <td>
                            ${addItem.item.attribute1} ${addItem.item.attribute2}
                            ${addItem.item.attribute3} ${addItem.item.attribute4}
                            ${addItem.item.attribute5} ${addItem.item.product.name}
                    </td>
                    <td>${addItem.inStock}</td>
                    <td>
                        <input type="number" class="Quantity" name="${addItem.item.itemId}" value="${addItem.quantity}"/>
                    </td>
                    <td>
                        <input class="Price" value="${addItem.item.listPrice}" size="8" readonly/>
                    </td>
                    <td>
                        <input class="Amount" value="${addItem.total}" size="8" readonly/>
                    </td>
                    <td>
                        <a href="removeItemFormCart?cartItem=${addItem.item.itemId}">Remove</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="7">
                    Sub Total:<span id="total">${cartItem.total}</span>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <c:if test="${sessionScope.cart.numberOfItems > 0}">
            <a href="viewOrderForm">Proceed to Checkout</a>
        </c:if></div>

    <div id="Separator">&nbsp;</div>
</div>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
    $("#Order").on('input', '.Quantity', function () {
        var self = $(this);
        var tr = self.closest("tr");

        var quantity = self.val();
        var Price = tr.find(".Price").val();

        var amount = 0;
        if ($.isNumeric(quantity) && $.isNumeric(Price)) {
            amount = quantity * Price;
        }
        tr.find(".Amount").val(amount);

        CalcSum();
    });

    function CalcSum()
    {
        var total_sum = 0;
        $("#Order .Amount").each(function () {
            var val = $(this).val();
            if ($.isNumeric(val)) {
                total_sum += parseFloat(val);
            }
        });

        $("#total").html(total_sum);
    }

</script>

<%@ include file="IncludeBottom.jsp"%>
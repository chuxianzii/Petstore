<%--
  Created by IntelliJ IDEA.
  User: XZY
  Date: 2019/10/11
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="includeTop.jsp"%>
<div id="allCommodity">
    <div class="commodity">
        <a href="https://baike.baidu.com/item/西伯利亚雪橇犬/540855?fromtitle=%E5%93%88%E5%A3%AB%E5%A5%87&fromid=123197" target="_blank"><img src="images/dog/erha.jpg"/></a>
        <span class="s1">￥40.0 包邮</span><br />
        <span class="s2">哈士奇</span><br />
        <span class="s3">熊熊熊专营店</span><br />
        <span class="s3">加入购物车</span>
    </div>
    <div class="commodity">
        <a href="https://baike.baidu.com/item/秋田犬/504109" target="_blank"> <img src="images/dog/qiutian.jpg"/></a>
        <span class="s1">￥40.0 包邮</span><br />
        <span class="s2">秋田犬</span><br />
        <span class="s3">卓卓卓专营店</span><br />
        <span class="s3">加入购物车</span>
    </div>
    <div class="commodity">
        <a href="https://baike.baidu.com/item/藏獒/5311" target="_blank"> <img src="images/dog/zangao.jpg"/></a>
        <span class="s1">￥40.0 包邮</span><br />
        <span class="s2">藏獒</span><br />
        <span class="s3">颖颖颖专卖店</span><br />
        <span class="s3">加入购物车</span>
    </div>
    <div class="commodity">
        <a href="https://baike.baidu.com/item/杜宾犬/1482770?fr=aladdin" target="_blank"> <img src="images/dog/dubin.jpg"/></a>
        <span class="s1">￥40.0 包邮</span><br />
        <span class="s2">杜宾犬</span><br />
        <span class="s3">崔崔崔专卖店</span><br />
        <span class="s3">加入购物车</span>
    </div>
</div>
<div id="BackLink">
    <a href="main">Return to Main Menu</a>
</div>

<div id="Catalog">

    <h2>${sessionScope.category.name}</h2>

    <table>
        <tr>
            <th>Product ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="product" items="${sessionScope.productList}">
            <tr>
                <td>
                    <a href="viewProduct?productId=${product.productId}">
                            ${product.productId}
                    </a>
                </td>
                <td>
                        ${product.name}
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

<%@ include file="IncludeBottom.jsp"%>




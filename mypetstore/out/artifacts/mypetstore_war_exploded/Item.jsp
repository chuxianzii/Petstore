<%@ include file="includeTop.jsp"%>
<div id="msg">已成功加入购物车！</div>
<div id="BackLink">
	<a href="ViewProduct?productId=${sessionScope.product.productId}">Return to ${sessionScope.product.productId}</a>
</div>

<div id="Catalog">

<table>
	<tr>
		<td>${sessionScope.product.description}</td>
	</tr>
	<tr>
		<td><b> ${sessionScope.item.itemId} </b></td>
	</tr>
	<tr>
		<td>
			<b>
				<font size="4">
					${sessionScope.item.attribute1}
					${sessionScope.item.attribute2}
					${sessionScope.item.attribute3}
					${sessionScope.item.attribute4}
					${sessionScope.item.attribute5}
					${sessionScope.product.name}
				</font>
			</b>
		</td>
	</tr>
	<tr>
		<td>${sessionScope.product.name}</td>
	</tr>
	<tr>
		<td>
			<c:if test="${sessionScope.item.quantity <= 0}">
        		Back ordered.
      		</c:if>
			<c:if test="${sessionScope.item.quantity > 0}">
      			${sessionScope.item.quantity} in stock.
			</c:if>
		</td>
	</tr>
	<tr>
		<td><fmt:formatNumber value="${sessionScope.item.listPrice}"
			pattern="$#,##0.00" /></td>
	</tr>

	<tr>
		<td>
			<a class="button" href="addItemToCart?workingItemId=${item.itemId}">Add to Cart</a>
		</td>
	</tr>
</table>

</div>

<%@ include file="IncludeBottom.jsp"%>

<script>
	$(function() {
		var offset = $("#end").offset();
		$(".addcar").click(function(event){
			var addcar = $(this);
			var img = addcar.parent().find('img').attr('src');
			var flyer = $('<img class="u-flyer" src="'+img+'">');
			flyer.fly({
				start: {
					left: event.pageX, //开始位置（必填）#fly元素会被设置成position: fixed
					top: event.pageY //开始位置（必填）
				},
				end: {
					left: offset.left+10, //结束位置（必填）
					top: offset.top+10, //结束位置（必填）
					width: 0, //结束时宽度
					height: 0 //结束时高度
				},
				onEnd: function(){ //结束回调
					$("#msg").show().animate({width: '250px'}, 200).fadeOut(1000); //提示信息
					addcar.css("cursor","default").removeClass('orange').unbind('click');
					this.destory(); //移除dom
				}
			});
		});
	});
</script>
<style>
	#msg{position:fixed; top:300px; right:35px; z-index:10000; width:1px; height:52px; line-height:52px; font-size:20px; text-align:center; color:#fff; background:#360; display:none}
</style>

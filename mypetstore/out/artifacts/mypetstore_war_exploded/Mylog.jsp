<%@ include file="includeTop.jsp"%>

<div id="BackLink">
    <a href="main">Return to Main Menu</a>
</div>

<div id="Catalog">

<div id="Mylog" align="middle">

    <h1>My Log</h1>
        <table>
            <tr>
                <th><b>Currenttime</b></th>
                <th><b>Username</b></th>
                <th><b>Behavior</b></th>
            </tr>
            <c:forEach var="mylog" items="${sessionScope.myloglist}">
                <tr>
                    <td>${mylog.currenttime}</td>
                    <td>${mylog.username}</td>
                    <td>${mylog.behavior}</td>
                </tr>
            </c:forEach>
        </table>

</div>

<%@ include file="IncludeBottom.jsp"%>




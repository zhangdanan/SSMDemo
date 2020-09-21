<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生列表</title>
</head>
<body>
<table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" >
    <thead>
    <tr style="text-align: left;">
        <form action="insert.jsp" method="post" enctype="application/x-www-form-urlencoded">
            <td colspan="3">
                <input type="submit" value="添加"/>
            </td>
        </form>
        <form action="delete.jsp" method="post" enctype="application/x-www-form-urlencoded">
            <td colspan="3">
                <input  type="submit" value="删除"/>
            </td>
        </form>
    </tr>
    <tr style="text-align: center;">
        <td><input type="checkbox" id="checkAll"/></td>
        <th>ID</th>
        <th>姓名</th>
        <th>密码</th>
        <th>名言</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${ list }" var="p">
        <tr style="text-align: center;">
            <td><input type="checkbox" class="checkSimple" value="${ p.id }"/></td>
            <th>${ p.id }</th>
            <th>${ p.name }</th>
            <th>${ p.password}</th>
            <th>${ p.value}</th>
            <td><a href="/update.jsp">修改</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
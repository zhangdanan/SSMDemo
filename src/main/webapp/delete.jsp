<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>删除</title>
</head>
<body>
<form action="/delete" method="delete" enctype="application/x-www-form-urlencoded">
    <table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" >
        <thead>
        <tr style="text-align: center;">
            <td><input type="checkbox" id="checkAll"/></td>
            <th>ID</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="checkbox" class="checkSimple"/></td>
            <td><input type="text" name="id" id="id"></td>
            <td><input type="submit" id="delete" value="删除"/></td>
        </tr>
        </tbody>
    </table>
    <p style="color: red">${delete}</p>
    <a href="/select">返回</a>
</form>
</body>
</html>
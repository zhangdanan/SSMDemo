<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加</title>
</head>
<body>
<form action="insert" method="post" enctype="application/x-www-form-urlencoded">
    <table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" >
        <thead>
        <tr style="text-align: center;">
            <td><input type="checkbox" id="checkAll"/></td>
            <th>ID</th>
            <th>姓名</th>
            <th>密码</th>
            <th>名言</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="checkbox" class="checkSimple"/></td>
            <td><input type="text" name="name" id="name"></td>
            <td><input type="text" name="password" id="password"></td>
            <td><input type="text" name="value" id="value"></td>
            <td><input type="submit" id="add" value="添加"/></td>
        </tr>
        </tbody>
    </table>
    <p style="color:red">${insert}</p>
</form>
</body>
</html>
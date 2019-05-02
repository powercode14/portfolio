<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!doctype html>

<html>
<head>
    <title>index</title>
</head>

<body>
    <p>hello powercode</p>

    <form action="/helloMybatis">
        <input type="text" name="param" value="powercode" />
        <button type="submit">전송</button>
    </form>

    <h2>${result}</h2>
</body>
</html>
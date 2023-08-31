<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        el01.jsp<br>
        <hr>
        <% out.print("출력"); %><br>
        <%= "출력" %><br>
        ${"표현 el 출력"}
        <hr>
        연산자<br>
        +, -, *, /(div), %(mod)<br>
        ==(eq), !=(ne)<br>
        >(gt), <(lt), <=(le), >=(ge)<br>
        ||(or), &&(and), !(not)<br>
        ${ 5 / 2 }, ${ 5 div 2 }<br>
        ${ 5 % 2 }, ${ 5 mod 2 }
        <hr>
    </body>
</html>
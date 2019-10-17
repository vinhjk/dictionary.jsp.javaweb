<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 10/17/2019
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%! Map<String,String> dic = new HashMap<>(); %>
<%
    dic.put("hello","xin chao");
    dic.put("tiger","ho");
    dic.put("cat","meo");
    dic.put("dog","cho");

    String search = request.getParameter("txtSearch");
    String result = dic.get(search);
    if (result!=null){
        out.println("Word :" + search);
        out.println("Result :" + result);
    }
    else {
        out.println("Not found !");
    }
%>
</body>
</html>

<%@ page import="org.thegreatinksociety.global.GlobalVariable" %><%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 8/30/2022
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="<%=GlobalVariable.localUrl%>/verificationCodeSubmit" method="POST">
    <input type="text" name="verificationCode" id="code">
      <label for="code">Enter your verification Code here</label>
      <button type="submit">Submit</button>
  </form>
</body>
</html>

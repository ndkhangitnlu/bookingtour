<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>List - Tours</title>
</head>
<body>
<table>
    <tr>
        <th>Chương trình</th>
        <th>Lịch khởi hành</th>
        <th>Giá</th>
        <th>Đặt</th>
    </tr>
    <c:forEach items="${tours}" var="tour">
    <tr>
        <td>${tour.getTourName()} <br ${tour.getDays()}></td>
        <td>${tour.getDepartureSchedule()}</td>
        <td>${tour.getPrice()}</td>
        <td><a href="/tour/booking?tourId=${tour.getTourId()}"><input type="button" value="Đặt tour"/></a></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
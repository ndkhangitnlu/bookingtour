<jsp:useBean id="customerBookingMapper" scope="request" type="com.fit.nlu.bookingtour.entity.CustomerBookingMapper"/>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Confirm</title>
</head>
<body>
    <h1>Xác nhận thông tin đặt tour</h1>
    <form method="get" action="/tour/list">
    <p>Thông tin khách hàng</p>
    <p>Họ tên: ${customerBookingMapper.customer.name}</p>
    <p>Địa chỉ: ${customerBookingMapper.customer.address}</p>
    <p>Email: ${customerBookingMapper.customer.email}</p>
    <p>Số điện thoại: ${customerBookingMapper.customer.phone}</p>
    <br/>
    <p>Thông tin chuyến đi</p>
    <p>Ngày khởi hành:  <fmt:formatDate value="${customerBookingMapper.booking.departureDate}" pattern="dd/MM/yyyy" /></p>
    <p>Số người lớn: ${customerBookingMapper.booking.noAdults}</p>
    <p>Số trẻ em: ${customerBookingMapper.booking.noChildren}</p>
    <br/>
    <input type = "submit" value = "Xác nhận" />
    </form>
</body>
</html>
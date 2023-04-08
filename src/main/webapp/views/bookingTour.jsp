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
    <div>Đặt tour: <jsp:useBean id="tour" scope="request" type="com.fit.nlu.bookingtour.entity.Tour"/>
    <c:out value="${tour.tourName}" /> <c:out value="${tour.days}" /> ${tour.tourId}</div>

    <%--@elvariable id="customerBookingMapper" type="com.fit.nlu.bookingtour.entity.CustomerBookingMapper"--%>
    <form:form action="/tour/${tour.tourId}/send-booking" method = "POST" modelAttribute="customerBookingMapper">
        <h2>Thông tin khách hàng</h2>
            <form:label path="customer.name">Họ tên: (*) </form:label>
            <form:input path="customer.name"/><br/>

            <form:label path="customer.address">Địa chỉ:</form:label>
            <form:input path="customer.address"/><br/>

            <form:label path="customer.email">Email:</form:label>
            <form:input path="customer.email"/><br/>

            <form:label path="customer.phone">Số điện thoại:</form:label>
            <form:input path="customer.phone"/><br/>
        
        <h2>Thông tin chuyến đi</h2>
            <form:label path="booking.departureDate">Ngày khởi hành: (*)</form:label>
            <form:input path="booking.departureDate"/>dd/mm/yyyy<br/>
        
            <form:label path="booking.noAdults">Số người lớn: (*)</form:label>
            <form:input path="booking.noAdults"/><br/>
                    
            <form:label path="booking.noChildren">Số trẻ em: </form:label>
            <form:input path="booking.noChildren"/><br/>
                    
        <form:button>Register</form:button>
        <a href="/tour/list"><form:button >Hủy</form:button></a>
    </form:form>

</body>
</html>
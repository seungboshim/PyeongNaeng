<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;
        padding: 0;
        background-color: #C0BBA8;
        width: 100%;
        height: 100vh;
    }
    .wrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100%;
    }
    .restaurantList {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 800px;
        height: 50%;
        overflow-y: scroll;
        margin-top: 80px;
    }
    .restaurantList::-webkit-scrollbar {
        width: 2px;
    }
    .restaurantList::-webkit-scrollbar-thumb {
        background-color: #918C76;
    }
    .restaurant {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        width: 600px;
        height: auto;
        border-radius: 24px;
        box-shadow: 0 0 4px rgba(0, 0, 0, 0.25);
        background-color: #FFFFFF;
        padding: 16px 32px;
        margin: 8px 0;
    }
    .restaurant:hover {
        box-shadow: 0 0 6px rgba(0, 0, 0, 0.5);
        transition: box-shadow 0.3s;
    }
    .restaurantLeft {
        display: flex;
        flex-direction: column;
    }
    .restaurantInfo {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-bottom: 12px;
    }
    .restaurantTag {
        width: fit-content;
        height: fit-content;
        margin-right: 12px;
        padding: 4px 8px;
        border-radius: 24px;
        background-color: #2E2E2E;
        color: white;
        font-weight: 300;
        font-size: 12px;
    }
</style>
<body>
<%--index.jsp--%>
<div class="wrapper">
    <div class="header">
        <img
            src="${pageContext.request.contextPath}/static/logo.svg"
            alt="너가 잘하는 집을 안 가봐서 그래"
            width="240px"
        />
    </div>
    <div class="restaurantList">
        <c:forEach items="${list}" var="restaurant">
            <div class="restaurant">
                <div class="restaurantLeft">
                    <div class="restaurantInfo">
                        <span style="font-weight: 600; margin-right: 16px">${restaurant.name}</span>
                        <div class="restaurantTag">${restaurant.taste}</div>
                        <div class="restaurantTag">${restaurant.price}</div>
                    </div>
                    <span>${restaurant.address}</span>
                </div>
                <div class="restaurantRight">
                    <p>${restaurant.thumbs}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
















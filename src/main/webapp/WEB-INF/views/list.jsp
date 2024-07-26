<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    .restaurantWrapper {
        display: flex;
        align-items: center;
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
    .restaurantWrapper:hover .restaurant {
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
    .youtubeLogoWrapper {
        display: flex;
        align-items: center;
        margin-left: 4px;
    }
    .restaurantRight {
        display: flex;
        flex-direction: row;
        align-items: center;
        color: #FFB800;
        font-weight: 600;
    }
    /*.thumbsCircle {*/
    /*    padding: 16px;*/
    /*    visibility: hidden;*/
    /*    opacity: 0;*/
    /*    transition: opacity ease-in-out 0.3s, visibility ease-in-out 0.3s;*/
    /*}*/
    /*.restaurantWrapper:hover .thumbsCircle {*/
    /*    opacity: 1;*/
    /*    visibility: visible;*/
    /*}*/
</style>
<script>
    const splitTag = (taste) => {
        const tags = taste.split(',');
        console.log(tags);
        return tags;
    }
    const showThumbs = (element) => {
        let thumbs = element.querySelector('.thumbsCircle');
        if (thumbs && thumbs.style.display === 'none') {
            thumbs.style.display = 'flex';
        } else {
            thumbs.style.display = 'none';
        }
    }
</script>
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
            <div class="restaurantWrapper">
                <div class="restaurant">
                    <div class="restaurantLeft">
                        <div class="restaurantInfo">
                            <span style="font-weight: 600; margin-right: 16px">${restaurant.name}</span>
                            <c:forEach items="${restaurant.tasteTags}" var="tag">
                                <div class="restaurantTag">${tag}</div>
                            </c:forEach>
                            <div class="restaurantTag">
                                <fmt:formatNumber value="${restaurant.price}" type="currency" currencySymbol=" " maxFractionDigits="0" />원
                            </div>
                            <c:if test="${restaurant.url != ''}">
                                <a class="youtubeLogoWrapper" href="${restaurant.url}" target="_blank">
                                    <img
                                        src="${pageContext.request.contextPath}/static/youtubeLogo.svg"
                                        height="24px"
                                        alt="유튜브 로고"
                                    >
                                </a>
                            </c:if>
                        </div>
                        <span>${restaurant.address}</span>
                    </div>
                    <div class="restaurantRight">
                        <img
                            src="${pageContext.request.contextPath}/static/thumbs.svg"
                            alt="좋아요"
                            width="24px"
                        >
                        <span style="margin-left: 12px">${restaurant.thumbs}</span>
                    </div>
                </div>
<%--            <div class="thumbsCircle">--%>
<%--                <img src="${pageContext.request.contextPath}/static/thumbsCircle.svg" width="48px" />--%>
<%--            </div>--%>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
















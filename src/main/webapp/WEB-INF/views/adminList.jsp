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
    .header > span {
        font-weight: 400;
        font-size: 24px;
    }
    .restaurantList {
        display: flex;
        flex-direction: column;
        align-items: start;
        width: 700px;
        height: 60%;
        overflow-x: hidden;
        overflow-y: scroll;
        margin: 32px 0;
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
        &:hover .restaurant {
            width: 440px;
            box-shadow: 0 0 6px rgba(0, 0, 0, 0.5);
            transition: width 0.3s, box-shadow 0.3s;
        }
        &:hover .restaurantRight {
            display: none;
        }
        &:hover .thumbsCircles {
            opacity: 1;
            display: flex;
            visibility: visible;
            transition: opacity ease-in-out 0.3s, visibility ease-in-out 0.3s;
        }
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
        margin: 8px;
        transition: width 0.3s;
    }
    .restaurantLeft {
        display: flex;
        flex-direction: column;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        &>span {
            overflow: hidden;
            text-overflow: ellipsis;
        }
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
        max-width: 100px;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .priceTag {
        width: fit-content;
        height: fit-content;
        margin-right: 12px;
        padding: 4px 8px;
        border-radius: 24px;
        background-color: #66845B;
        color: white;
        font-weight: 300;
        font-size: 12px;
        max-width: 100px;
        overflow: hidden;
        text-overflow: ellipsis;
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
    .thumbsCircles {
        display: flex;
        visibility: hidden;
        padding: 16px;
        opacity: 0;
    }
    .thumbCircle {
        width: 56px;
        height: 56px;
        border-radius: 56px;
        margin-right: 16px;
        box-shadow: 0 0 4px rgba(0, 0, 0, 0.25);
        cursor: pointer;
        &:hover {
            box-shadow: 0 0 6px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.3s;
        }
    }
    .editCircle {
        width: 56px;
        height: 56px;
        border-radius: 56px;
        box-shadow: 0 0 4px rgba(0, 0, 0, 0.25);
        cursor: pointer;
        &:hover {
            box-shadow: 0 0 6px rgba(0, 0, 0, 0.5);
            transition: box-shadow 0.3s;
        }
    }
    .footer {
        display: flex;
        align-items: center;
        & span {
            font-size: 16px;
            margin-right: 16px;
        }
        & div {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 24px;
            background-color: #FFB800;
            color: white;
            cursor: pointer;
        }
    }
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
<%--adminList.jsp--%>
<div class="wrapper">
    <div class="header">
        <span>평냉 고수인 당신을 만족시킨 곳이 있나요?</span>
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
                            <div class="priceTag">
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
                <div class="thumbsCircles">
                    <div class="thumbCircle" onclick="location.href='thumbsup?id=${restaurant.id}'">
                        <img src="${pageContext.request.contextPath}/static/thumbsCircle.svg" width="56px" />
                    </div>
                    <div class="editCircle">
                        <a href="edit?id=${restaurant.id}">
                            <img src="${pageContext.request.contextPath}/static/editCircle.svg" width="56px" />
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="footer">
        <span>마음에 드는 곳이 없다면..</span>
        <a href="form" style="text-decoration: none">
            <div>추가하기</div>
        </a>
    </div>
</div>
</body>
</html>
















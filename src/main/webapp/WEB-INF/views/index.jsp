<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        background-color: #2E2E2E;
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
    .mainBtn {
        display: flex;
        justify-content: center;
        align-items: center;
        width: fit-content;
        height: fit-content;
        padding: 12px 24px;
        background-color: white;
        border-radius: 24px;
        margin-top: 12px;
        color: #2E2E2E;
    }
    .mainBtn:hover {
        box-shadow: #FFFFFF 0 0 8px;
        transition: box-shadow 0.3s;
    }
</style>
<body>
<%--index.jsp--%>
    <div class="wrapper">
        <h3 style="color: white; font-weight: 300; margin-bottom: 24px;">평양냉면, 좋아하세요?</h3>
        <a href="/admin/list" style="text-decoration: none">
            <div class="mainBtn">네!</div>
        </a>
        <a href="/guest/list" style="text-decoration: none">
            <div class="mainBtn">별론데요</div>
        </a>
    </div>
</body>
</html>
















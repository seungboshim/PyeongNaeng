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
    .formWrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .form {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background-color: #FFFFFF;
        width: 600px;
        height: auto;
        padding: 32px;
        margin: 32px 0;
        border-radius: 30px;
        box-shadow: 0 0 6px rgba(0, 0, 0, 0.25);
    }
    .formInput {
        display: flex;
        flex-direction: row;
        align-items: center;
        flex: 1;
        width: 100%;
    }
    .form span {
        font-weight: 500;
        margin-right: 32px;
    }
    .form input {
        flex: 1;
        height: 40px;
        margin: 8px 0 9px 0;
        padding: 0 8px;
        font-size: 16px;
        border: none;
        border-bottom: 1px solid #D9D9D9;
        &:focus {
            outline: none;
            border-bottom: 2px solid #2E2E2E;
            margin-bottom: 8px;
            transition: border-bottom-color 0.3s;
        }
    }
    .deleteBtn {
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 16px;
        padding: 8px 16px;
        border-radius: 24px;
        background-color: #EC5454;
        color: white;
        border: none;
        margin-right: 16px;
        cursor: pointer;
    }
    .submitBtn {
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 16px;
        padding: 8px 16px;
        border-radius: 24px;
        background-color: #2E2E2E;
        color: white;
        border: none;
        cursor: pointer;
    }
</style>
<body>
<%--index.jsp--%>
<div class="wrapper">
    <div class="header">
        <p>평냉을 좋아하는 당신, DB를 건들 자격 있어요</p>
    </div>
    <form class="formWrapper" method="post">
        <div class="form">
            <div class="formInput">
                <span>식당 이름</span>
                <input type="text" name="name" placeholder="식당 이름을 입력해주세요." required />
            </div>
            <div class="formInput">
                <span>식당 주소</span>
                <input type="text" name="address" placeholder="식당 주소를 입력해주세요." />
            </div>
            <div class="formInput">
                <span>평냉의 맛</span>
                <input type="text" name="taste" placeholder="평냉의 맛을 쉼표를 구분자로 작성해주세요." />
            </div>
            <div class="formInput">
                <span>평냉 가격</span>
                <input type="number" name="price" placeholder="평양냉면의 가격을 알려주세요." required />
            </div>
            <div class="formInput">
                <span>평냉 영상</span>
                <input type="text" name="url" placeholder="식당 관련 영상 url을 남겨주세요." />
            </div>
        </div>
        <button class="submitBtn" type="submit">작성완료</button>
    </form>
</div>
</body>
</html>
















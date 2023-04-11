<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
    <form:form method="post" modelAttribute="todo">
        <form:hidden path="id" />
        <fieldset class="form-group">
            <form:label path="desc">Description</form:label>
            <form:input path="desc" type="text" class="form-control"
                required="required" />
            <form:errors path="desc" cssClass="text-warning"></form:errors>
        </fieldset>
        <fieldset class="form-group">
            <form:label path="targetDate">Target Date</form:label>
            <form:input path="targetDate" type="text" class="form-control"
                required="required" />
            <form:errors path="targetDate" cssClass="text-warning"></form:errors>
        </fieldset>
        <button type="submit" class="btn btn-success">Save</button>
    </form:form>
</div>

</body>
</html>
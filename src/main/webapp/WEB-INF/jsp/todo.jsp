<%@ include file="common/header.jspf"%>
<%@ include file="common/nav.jspf"%>
<div class="container">
    <form:form method="post" modelAttribute="todo">
        <fieldset class="form-group">
            <form:label path="desc">Description :</form:label>
            <form:input path="desc" type="text" class="form-control" required="required"></form:input>
            <form:errors path="desc" cssClass="alert-warning"/>
        </fieldset>
        <fieldset class="form-group">
            <form:label path="targetDate">Target date :</form:label>
            <form:input path="targetDate" type="text" class="form-control" required="required"></form:input>
            <form:errors path="targetDate" cssClass="alert-warning"/>
        </fieldset>
        <button type="submit" class="btn btn-success">Add Todo</button>
    </form:form>
</div>
<%@include file="common/footer.jspf"%>
</html>

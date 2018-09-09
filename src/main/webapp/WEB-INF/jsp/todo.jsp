<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
    <head>
        <title>Web for Practice</title>
        <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <body>
        <div class="container">
            <form:form method="post" modelAttribute="todo">
                <fieldset class="form-group">
                    <form:label path="desc">Description :</form:label>
                    <form:input path="desc" type="text" class="form-control" required="required"></form:input>
                    <form:errors path="desc" cssClass="alert-warning"/>
                </fieldset>
                <button type="submit" class="btn btn-success">Add Todo</button>
            </form:form>
        </div>
        <script src="jquery/1.9.1/jquery.min.js"></script>
        <script src="bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
    </head>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Web for Practice</title>
        <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <table class="table table-striped">
                <caption>Here are the list of ${name} todos:</caption>
                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Completed</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.desc}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                            <td><a type="button" class="btn btn-success" href="update-todo?id=${todo.id}">Update</a></td>
                            <td><a type="button" class="btn btn-warning" href="delete-todos?id=${todo.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div><a class="button" href="/add-todos">Add Todo</a></div>

            <script src="jquery/1.9.1/jquery.min.js"></script>
            <script src="bootstrap/3.3.6/js/bootstrap.min.js"></script>
        </div>
    </body>
</html>

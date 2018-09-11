<%@ include file="common/header.jspf"%>
<%@ include file="common/nav.jspf"%>
        <div class="container">
            <table class="table table-striped">
                <caption>Here are the list of your todos:</caption>
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
                            <td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"></fmt:formatDate></td>
                            <td>${todo.done}</td>
                            <td><a type="button" class="btn btn-success" href="update-todo?id=${todo.id}">Update</a></td>
                            <td><a type="button" class="btn btn-warning" href="delete-todos?id=${todo.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div><a class="button" href="/add-todos">Add Todo</a></div>
        </div>
<%@include file="common/footer.jspf"%>
</html>

<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>	


<div class="container mx-auto px-4 py-5">
    <h1 class="text-3xl font-bold mb-4">Your Todos</h1>
    <table class="w-full text-left rounded-lg shadow-lg bg-white">
        <thead class="bg-blue-500 text-white">
            <tr>
                <th class="px-4 py-2">Description</th>
                <th class="px-4 py-2">Target Date</th>
                <th class="px-4 py-2">Is Done?</th>
                <th class="px-4 py-2"></th>
                <th class="px-4 py-2"></th>
            </tr>
        </thead>
        <tbody>		
            <c:forEach items="${todos}" var="todo">
                <tr class="border-b border-gray-200">
                    <td class="px-4 py-2">${todo.description}</td>
                    <td class="px-4 py-2">${todo.targetDate}</td>
                    <td class="px-4 py-2">${todo.done}</td>
                    <td class="px-4 py-2">
                        <a href="delete-todo?id=${todo.id}" class="bg-yellow-500 hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded inline-block">Delete</a>
                    </td>
                    <td class="px-4 py-2">
                        <a href="update-todo?id=${todo.id}" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded inline-block">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="add-todo" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded inline-block mt-4">Add Todo</a>
</div>
<%@ include file="common/footer.jspf" %>
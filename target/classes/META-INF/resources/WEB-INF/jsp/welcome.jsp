<%@ include file="common/header.jspf" %>
<!-- <%@ include file="common/navigation.jspf" %>	 -->
<nav class="bg-gradient-to-r from-blue-600 to-blue-800 mb-3 p-3 shadow-lg">
	<div class="container mx-auto flex justify-between items-center">
		<a class="text-white text-2xl font-bold" href="https://courses.in28minutes.com">TaskMaster</a>
		<div class="hidden md:block">
			<ul class="flex space-x-4">
				<li><a class="text-white hover:text-gray-300" href="/">Home</a></li>
				<li><a class="text-white hover:text-gray-300" href="/list-todos">Todos</a></li>
			</ul>
		</div>
		<ul class="flex">
			<li><a class="text-white bg-red-600 px-3 py-1 rounded hover:bg-red-700 transition-colors duration-200" href="/logout">Logout</a></li>
		</ul>
	</div>
</nav>

<!-- Welcome Section -->
<div class="container mx-auto px-4 py-5">
	<div class="flex flex-col items-center justify-center h-screen bg-gradient-to-b from-blue-600 to-purple-800">
		<h1 class="text-5xl font-bold text-white shadow-lg mb-4">Welcome ${name}</h1>
		<div class="flex items-center text-white">
			<a href="/list-todos" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded mr-2 transition-colors duration-200">Manage</a>
			<p>Your todos</p>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf" %>

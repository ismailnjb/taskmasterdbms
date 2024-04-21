<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>	

<div class="container mx-auto">
	
	<h1 class="text-3xl font-bold mb-6">Enter Todo Details</h1>
	
	<form:form method="post" modelAttribute="todo">

		<fieldset class="mb-6">				
			<form:label class="block mb-2" path="description">Description</form:label>
			<form:input class="block w-full px-4 py-2 rounded border focus:outline-none focus:border-blue-500" type="text" path="description" required="required"/>
			<form:errors path="description" cssClass="text-warning"/>
		</fieldset>

		<fieldset class="mb-6">				
			<form:label class="block mb-2" path="targetDate">Target Date</form:label>
			<form:input  class="block w-full px-4 py-2 rounded border focus:outline-none focus:border-blue-500" type="text" path="targetDate" required="required"/>
			<form:errors path="targetDate" cssClass="text-warning"/>
		</fieldset>

		
		<form:input type="hidden" path="id"/>

		<form:input type="hidden" path="done"/>

		<input type="submit" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded"/>
	
	</form:form>
	
</div>

<%@ include file="common/footer.jspf" %>

<script type="text/javascript">
	$('#targetDate').datepicker({
	    format: 'yyyy-mm-dd'
	});
</script>

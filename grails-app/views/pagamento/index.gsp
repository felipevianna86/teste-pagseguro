
<%@ page import="pagamento.Pagamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pagamento.label', default: 'Pagamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pagamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pagamento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'pagamento.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="dataPagamento" title="${message(code: 'pagamento.dataPagamento.label', default: 'Data Pagamento')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'pagamento.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="dateUpdated" title="${message(code: 'pagamento.dateUpdated.label', default: 'Date Updated')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'pagamento.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pagamentoInstanceList}" status="i" var="pagamentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pagamentoInstance.id}">${fieldValue(bean: pagamentoInstance, field: "codigo")}</g:link></td>
					
						<td><g:formatDate date="${pagamentoInstance.dataPagamento}" /></td>
					
						<td><g:formatDate date="${pagamentoInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${pagamentoInstance.dateUpdated}" /></td>
					
						<td>${fieldValue(bean: pagamentoInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pagamentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

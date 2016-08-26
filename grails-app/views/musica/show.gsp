
<%@ page import="musica.test.Musica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'musica.label', default: 'Musica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-musica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-musica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list musica">
			
				<g:if test="${musicaInstance?.dataLancamento}">
				<li class="fieldcontain">
					<span id="dataLancamento-label" class="property-label"><g:message code="musica.dataLancamento.label" default="Data Lancamento" /></span>
					
						<span class="property-value" aria-labelledby="dataLancamento-label"><g:formatDate date="${musicaInstance?.dataLancamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${musicaInstance?.artista}">
				<li class="fieldcontain">
					<span id="artista-label" class="property-label"><g:message code="musica.artista.label" default="artista" /></span>
					
						<span class="property-value" aria-labelledby="artista-label"><g:link controller="artista" action="show" id="${musicaInstance?.artista?.id}">${musicaInstance?.artista?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${musicaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="musica.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${musicaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:musicaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${musicaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

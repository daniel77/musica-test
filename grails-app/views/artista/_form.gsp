<%@ page import="musica.test.Artista" %>



<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'musicas', 'error')} ">
	<label for="musicas">
		<g:message code="artista.musicas.label" default="Musicas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${artistaInstance?.musicas?}" var="m">
    <li><g:link controller="musica" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="musica" action="create" params="['artista.id': artistaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'musica.label', default: 'Musica')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="artista.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${artistaInstance?.nome}"/>

</div>


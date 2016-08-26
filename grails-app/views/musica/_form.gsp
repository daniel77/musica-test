<%@ page import="musica.test.Musica" %>



<div class="fieldcontain ${hasErrors(bean: musicaInstance, field: 'dataLancamento', 'error')} required">
	<label for="dataLancamento">
		<g:message code="musica.dataLancamento.label" default="Data Lancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataLancamento" precision="day"  value="${musicaInstance?.dataLancamento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: musicaInstance, field: 'Artista', 'error')} required">
	<label for="Artista">
		<g:message code="musica.Artista.label" default="Artista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="artista" name="artista.id" from="${musica.test.Artista.list()}" optionKey="id" required="" value="${musicaInstance?.artista?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: musicaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="musica.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${musicaInstance?.nome}"/>

</div>


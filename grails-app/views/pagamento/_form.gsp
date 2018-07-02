<%@ page import="pagamento.Pagamento" %>



<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="pagamento.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigo" required="" value="${pagamentoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'dataPagamento', 'error')} required">
	<label for="dataPagamento">
		<g:message code="pagamento.dataPagamento.label" default="Data Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataPagamento" precision="day"  value="${pagamentoInstance?.dataPagamento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'dateUpdated', 'error')} required">
	<label for="dateUpdated">
		<g:message code="pagamento.dateUpdated.label" default="Date Updated" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateUpdated" precision="day"  value="${pagamentoInstance?.dateUpdated}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="pagamento.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${pagamentoInstance?.titulo}"/>

</div>


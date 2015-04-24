<%@ page import="sistemaventas.Direccion" %>



<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="direccion.numero.label" default="Numero" />
		
	</label>
	<g:field name="numero" type="number" value="${direccionInstance.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="direccion.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${direccionInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'colonia', 'error')} ">
	<label for="colonia">
		<g:message code="direccion.colonia.label" default="Colonia" />
		
	</label>
	<g:textField name="colonia" value="${direccionInstance?.colonia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="direccion.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${direccionInstance?.estado}"/>

</div>


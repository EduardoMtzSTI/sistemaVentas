<%@ page import="sistemaventas.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${clienteInstance?.nombre}"/>

</div>





<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'numero', 'error')} ">
    <label for="numero">
        <g:message code="direccion.numero.label" default="Numero" />

    </label>
    <g:textField name="numero" value="${clienteInstance?.direccion?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'calle', 'error')} ">
    <label for="calle">
        <g:message code="direccion.calle.label" default="Calle" />

    </label>
    <g:textField name="calle" value="${clienteInstance?.direccion?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'colonia', 'error')} ">
    <label for="colonia">
        <g:message code="direccion.colonia.label" default="Colonia" />

    </label>
    <g:select name="colonia"
              from="['Querétaro','Monterrey']"
              value="${clienteInstance?.direccion?.colonia}"
              required=""
              noSelection="['':'Seleccionar...']"
              class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'estado', 'error')} ">
    <label for="estado">
        <g:message code="direccion.estado.label" default="Estado" />

    </label>
    <g:select name="estado"
              from="['Querétaro','Nuevo Leon']"
              value="${clienteInstance?.direccion?.estado}"
              required=""
              noSelection="['':'Seleccionar...']"
              class="form-control" />

</div>



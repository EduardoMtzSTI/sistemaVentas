<%@ page import="sistemaventas.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="proveedor.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${proveedorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="proveedor.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${proveedorInstance.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'paginaWeb', 'error')} ">
	<label for="paginaWeb">
		<g:message code="proveedor.paginaWeb.label" default="Pagina Web" />
		
	</label>
	<g:textField name="paginaWeb" value="${proveedorInstance?.paginaWeb}"/>

</div>






<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'numero', 'error')} ">
    <label for="numero">
        <g:message code="direccion.numero.label" default="Numero" />

    </label>
    <g:textField name="numero" value="${proveedorInstance?.direccion?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'calle', 'error')} ">
    <label for="calle">
        <g:message code="direccion.calle.label" default="Calle" />

    </label>
    <g:textField name="calle" value="${proveedorInstance?.direccion?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'colonia', 'error')} ">
    <label for="colonia">
        <g:message code="direccion.colonia.label" default="Colonia" />

    </label>
    <g:select name="colonia"
              from="['Querétaro','Monterrey']"
              value="${proveedorInstance?.direccion?.colonia}"
              required=""
              noSelection="['':'Seleccionar...']"
              class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'estado', 'error')} ">
    <label for="estado">
        <g:message code="direccion.estado.label" default="Estado" />

    </label>
    <g:select name="estado"
              from="['Querétaro','Nuevo Leon']"
              value="${proveedorInstance?.direccion?.estado}"
              required=""
              noSelection="['':'Seleccionar...']"
              class="form-control" />

</div>









<%@ page import="sistemaventas.Venta" %>



<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'producto', 'error')} ">
	<label for="producto">
		<g:message code="venta.producto.label" default="Producto" />
		
	</label>
	<g:select id="producto" name="producto.id" from="${sistemaventas.Producto.list()}" optionKey="id" value="${ventaInstance?.producto?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'cantidad', 'error')} ">
	<label for="cantidad">
		<g:message code="venta.cantidad.label" default="Cantidad" />
		
	</label>
	<g:field name="cantidad" type="number" value="${ventaInstance.cantidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'descuento', 'error')} ">
	<label for="descuento">
		<g:message code="venta.descuento.label" default="Descuento" />
		
	</label>
	<g:field name="descuento" value="${fieldValue(bean: ventaInstance, field: 'descuento')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'monto', 'error')} ">
	<label for="monto">
		<g:message code="venta.monto.label" default="Monto" />
		
	</label>
	<g:field name="monto" value="${fieldValue(bean: ventaInstance, field: 'monto')}"/>

</div>


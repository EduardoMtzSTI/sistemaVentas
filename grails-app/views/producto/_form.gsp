<%@ page import="sistemaventas.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${productoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precioActual', 'error')} ">
	<label for="precioActual">
		<g:message code="producto.precioActual.label" default="Precio Actual" />
		
	</label>
	<g:field name="precioActual" value="${fieldValue(bean: productoInstance, field: 'precioActual')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'stock', 'error')} ">
	<label for="stock">
		<g:message code="producto.stock.label" default="Stock" />
		
	</label>
	<g:select id="stock" name="stock.id" from="${sistemaventas.CatStocks.list()}" optionKey="id" value="${productoInstance?.stock?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="producto.categoria.label" default="Categoria" />
		
	</label>
	<g:select id="categoria" name="categoria.id" from="${sistemaventas.CatCategorias.list()}" optionKey="id" value="${productoInstance?.categoria?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'proveedor', 'error')} ">
    <label for="categoria">
        <g:message code="producto.categoria.label" default="Categoria" />

    </label>
    <g:select id="cliente" name="cliente.id" from="${sistemaventas.Proveedor.list()}" optionKey="id" value="${productoInstance?.proveedor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>


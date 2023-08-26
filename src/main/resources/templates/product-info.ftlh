<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h2>Подробная информация о товаре</h2>
<#list images as img>
    <img src="/images/${img.id}" height="100px"/><br><br>
    <#else>
    <h3> Фото отсутствуют</h3>
</#list>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b>${product.user.name}<br>
<hr>
<#--<form action="/product/delete/${product.id}" method="post">-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Удалить товар"/>-->
<#--</form>-->
</body>
</html>
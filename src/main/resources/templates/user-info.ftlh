<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h3>Подробная информация о продавце ${user.name}</h3><br>
<b>Номер телефона</b> ${user.phoneNumber}<br>
<b>Эл. почта</b> ${user.email}<br>

<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b>  ${product.price} руб. | <a href="/product/${product.id}"> Подробнее... </a></p>
    </div>
    <#else>
    <h2>Товаров нет</h2>
</#list>

<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>

</body>
</html>
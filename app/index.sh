#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT
<!DOCTYPE html>
<html>
<head>
        <title>Calculadora Jack Experts</title>
</head>
<body>
        <p>Oi! Insira os valores</p>
        <form action="info.sh" method="get">
                <label>Valor 1</label>
                <input type="text" name="n1">
                <br>
                <label>Valor 2</label>
                <input type="text" name="n2">
                <br>
                <button type="submit">Enviar</button>
        </form>
</body>
</html>
EOT

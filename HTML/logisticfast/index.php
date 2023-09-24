<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="estilos.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
</head>
<body>

    <div class="esquerda">
        <div class="slogan">
            <p class="ab"> Confiança no transporte mais rápido do mundo</p>
            
        </div>
    </div>

    <div class="direita">
        <div class="page">
            <form action="entrada.php" method="POST" class="formLogin">
            <h1>Login</h1>

            <p>Acesse sua conta</p>

            <input type="email" placeholder="USUARIO@EMAIL.COM" autofocus="true" name="email" required />
            <br><br>

            <input type="password" placeholder="SENHA" name="senha" required />
            <br><br>
            
            <input type="submit" value="Entrar" class="btn" />
            <br><br>

            <p>Não tem uma conta? <a href="/">Cadastre-se</a></p>
            <br><br>
            
            </form>
        </div>
    </div>
    
</body>
</html>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Convite para Sair</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color:#4169e1;
        }
        .container {
            text-align: center;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border: 2px solid #0277bd;
        }
        .buttons {
            margin-top: 20px;
            position: relative;
            height: 100px; /* espaço para o botão fugir */
        }
        .button {
            font-size: 18px;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            color: #ffffff;
        }
        .button-yes {
            background-color: #0288d1;
        }
        .button-no {
            background-color: #d32f2f;
            position: absolute;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Eai Ronaldi, vamos sair?</h1>
    <div class="buttons">
        <button class="button button-yes" onclick="alert('Ótimo! Vamos marcar a data!')">Sim</button>
        <button class="button button-no" id="button-no">Não</button>
    </div>
</div>

<script>
    const buttonNo = document.getElementById('button-no');

    buttonNo.addEventListener('mouseover', () => {
        const container = document.querySelector('.container');
        const containerRect = container.getBoundingClientRect();
        const buttonRect = buttonNo.getBoundingClientRect();

        const maxX = containerRect.width - buttonRect.width;
        const maxY = containerRect.height - buttonRect.height;

        const randomX = Math.floor(Math.random() * maxX);
        const randomY = Math.floor(Math.random() * maxY);

        buttonNo.style.left = randomX + 'px';
        buttonNo.style.top = randomY + 'px';
    });
</script>

</body>
</html>
          

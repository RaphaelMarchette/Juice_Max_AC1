<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Static_2/css/Tela.css"/>
    <link rel="stylesheet" href="Static_2/css/Table.css"/>
    <link rel="stylesheet" href="Static_2/css/Form_Create_Juice.css" />
    <script src="Static_1/Scripts/View.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <title>Juice Max</title>
</head>
<body>

    <div class="aba">
        <h1>Juice Max</h1>
    </div>

    <div class="box_entrar">
        <a id="bt_entrar" href="Public/Pagar.php">Entrar</a>
    </div>

</body>

<script>
    document.addEventListener('keydown', function(e) {
    if(e.keyCode == 32){  //  Tecla Space
    document.getElementById("bt_entrar").click();
    }
    });
</script>

</html>
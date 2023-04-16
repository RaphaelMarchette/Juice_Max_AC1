<?php include 'Templates/Tela.php' ?>

    <div class="aba">
        <a href="Pedir.php" id="bt_pedir">Pedir</a>
        <a href="../home.php"  id="bt_voltar">home</a>
    </div>

    <?php include 'Templates/Table_View_Pagar.php' ?>

<script>
    document.addEventListener('keydown', function(e) {
    if(e.keyCode == 32){  //  Tecla Space
    document.getElementById("bt_pedir").click();
    }
    });
</script>
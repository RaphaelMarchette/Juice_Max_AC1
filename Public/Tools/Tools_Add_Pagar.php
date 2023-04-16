<?php

    include_once('../../config.php');

    $sqlSelect_1 = "SELECT * FROM view_suco WHERE id=1 ";
    $result_1 = $conexao->query($sqlSelect_1);

    // select_1
    if($result_1->num_rows > 0)
    {
        while($user_data_1 = mysqli_fetch_assoc($result_1))
        {
            $id_fk = $user_data_1['id_fk'];
            $nome = $user_data_1['nome'];
            $valor = $user_data_1['valor'];
        }

            // select_2
            $sqlSelect_2 = "SELECT * FROM view_preferencia WHERE id=1 ";
            $result_2 = $conexao->query($sqlSelect_2);

            if($result_2->num_rows > 0)
            {
                while($user_data_2 = mysqli_fetch_assoc($result_2))
                {
                    $preferencia = $user_data_2['nome'];
                }



                // select_3
                $sqlSelect_3 = "SELECT * FROM view_acrescimo WHERE id=1 ";
                $result_3 = $conexao->query($sqlSelect_3);
                
                if($result_3->num_rows > 0)
                {
                    while($user_data_3 = mysqli_fetch_assoc($result_3))
                    {
                        $acrescimo = $user_data_3['nome'];
                        $valor_acrescimo = $user_data_3['valor'];
                    }

                    $result = mysqli_query($conexao, "INSERT INTO view_pedido (id, id_fk, nome, valor, preferencia, acrescimo, valor_acrescimo) VALUES ('defalt', '$id_fk', '$nome', '$valor', '$preferencia','$acrescimo', '$valor_acrescimo') ");

                    $sqlDelete_1 = "DELETE FROM view_suco";
                    $result_Delete_1 = $conexao->query($sqlDelete_1);
    
                    $sqlDelete_2 = "DELETE FROM view_preferencia";
                    $result_Delete_2 = $conexao->query($sqlDelete_2);
    
                    $sqlDelete_3 = "DELETE FROM view_acrescimo";
                    $result_Delete_3 = $conexao->query($sqlDelete_3);
                    
                    header('Location: ../Pagar.php');

                }
                else
                {
                    header('Location: ../Pedir.php');
                }
            }
            else
            {
                header('Location: ../Pedir.php');
            }
    }
    else
    {
        header('Location: ../Pedir.php');
    }



    //         if(($cont < 6) && ($peso_Bat +$peso > 0 ))
?>
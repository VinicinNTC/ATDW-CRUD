<?php
$conexao = new mysqli("localhost", "root", "usbw", "produtosz");

if ($conexao->connect_error) {
    die("Falha na conexão: " . $conexao->connect_error);
}

$nome       = $conexao->real_escape_string($_POST['nome']);
$qtd_vender = (int)$_POST['qtd_estoque'];

if (!empty($nome) && $qtd_vender > 0) {
    // Subtrai a quantidade informada do produto no banco
    $sql = "UPDATE produtos 
            SET qtd_estoque = qtd_estoque - $qtd_vender 
            WHERE nome = '$nome' AND qtd_estoque >= $qtd_vender";

    $conexao->query($sql);
}

$conexao->set_charset("utf8mb4"); //comando que aprendi para mudar o charset pra tabela, e mudar no mysql tambem pq ele entra automaticamente como "latin alguma coisa' e isso >fode< o texto.
$conexao->close();
header("Location: telainicial.php");
exit();
?>
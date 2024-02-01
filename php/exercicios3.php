<!-- ) Faça a ordenação e impressão da estrutura $arrayDeClientes resultante do exercício
2 pela data de nascimento (pode ser ascendente ou descendente). -->

<?php
$arrayDeClientes = [
  ['nome' => 'Lucas Santos', 'data_nascimento' => '10-12-1996'],
  ['nome' => 'Arthur Golveia', 'data_nascimento' => '14-01-2000'],
  ['nome' => 'Guilherme Rosa', 'data_nascimento' => '26-05-1985'],
  ['nome' => 'Marcelo Planalto', 'data_nascimento' => '26-05-1985'],
];

uasort($arrayDeClientes, function ($cliente1, $cliente2) {
  $data1 = strtotime($cliente1['data_nascimento']);
  $data2 = strtotime($cliente2['data_nascimento']);

  return $data2 < $data1;
});

foreach ($arrayDeClientes as $cliente) {
  echo $cliente['nome'] . ', nascido em ' . date('d/m/Y', strtotime($cliente['data_nascimento'])) . PHP_EOL;
}
?>
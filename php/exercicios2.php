<!-- Utilize a estrutura de dados $arrayDeNascimento para adicionar na estrutura
$arrayDeClientes a data de nascimento de cada cliente. -->
<?php
$arrayDeNascimento = [
  'Francisco Souza' => '10-12-1996',
  'Arthur Golveia' => '14-01-2000',
  'Guilherme Rosa' => '26-05-1985',
  'Marcelo Planalto' => '26-05-1985'
];
$arrayDeClientes = [
  ['nome' => 'Lucas Santos'],
  ['nome' => 'Arthur Golveia'],
  ['nome' => 'Guilherme Rosa'],
  ['nome' => 'Marcelo Planalto'],
];

$arrayDeNascimento = [
  'Lucas Santos' => '10-12-1996',
  'Arthur Golveia' => '14-01-2000',
  'Guilherme Rosa' => '26-05-1985',
  'Marcelo Planalto' => '26-05-1985',
];

$arrayDeClientes = array_map(function ($cliente) use ($arrayDeNascimento) {
  $cliente['data_nascimento'] = $arrayDeNascimento[$cliente['nome']];
  return $cliente;
}, $arrayDeClientes);

echo '<pre>';
print_r($arrayDeClientes);
echo '</pre>';
?>
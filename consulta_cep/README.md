# --------CONSULTA CEP-------- #

Autor: Guilherme Dietrich

## Justificativa

Foi solicitado a criação de um cenário válido e um cenário inválido.
Ao que corresponde ao cenário inválido, senti a necessidade de tratar um CEP inexistente e um CEP inválido.

CEP inexistente: Um CEP que atende a quantidade de caracteres de um CEP, porém não existe na base dos Correios. A requisição retorna status 200 no HTTP, porém retorna campo erro no json.

CEP inválido: Um CEP que não atende a quantidade de caracteres de um CEP, pois este tem menos ou mais que 8 caracteres, tornando-o inválido e retornando uma Bad Request HTTP.

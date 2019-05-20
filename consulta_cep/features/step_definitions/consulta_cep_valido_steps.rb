Dado("o endereço da API para a consulta do CEP") do
  @consulta_cep = ConsultaCEP.new
end

Quando("realizar a requisição para consultar o endereço com um CEP {string}") do |cep|
  @response = @consulta_cep.get_cep(CEPs[cep], "json")
end

Então("a API irá retornar o código do IBGE do endereço") do
  response_body = JSON.parse(@response.body)
  expect(response_body).not_to have_key("erro")
  puts('Retorno do código IBGE: ' + response_body["ibge"])
end

Então("a API irá retornar erro CEP {string}") do |cep|
  response_body = JSON.parse(@response.body)
  expect(response_body).to have_key("erro")
end

Então("status code {int}") do |codigo|
  expect(@response.code).to eq(codigo)
end

Então("a página irá retornar bad request {int}") do |codigo|
  expect(@response.code).to eq(codigo)
end

Então("status code diferente de {int}") do |codigo|
  expect(@response.code).not_to eq(codigo)
end
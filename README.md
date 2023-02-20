# App delivery Dart week 9

App desenvolvida durante a Dart Week, evento em que é desenvolvido um projeto em uma semana utilizando Flutter.
Nessa edição é desenvolvido um app chamado vaquinha burguer de delivery.

## Aula 1
- Organização do código e separação depastas
- Utilização de classes com padrão Singleton
- Customização de widget - botões
- Criação da tela - SplashScreen
- Configuração do backend com json_rest_server
- Packages - Dio e flutter_dotenv

<p><img width="80%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/postman_produtos.png"/></p>

## Aula 2
- Criação do Model e repository - produtos (endpoint)
- Utilização de SOLID na criação de interfaces
- Serialização de JSON
- Uso de Provider e Multiprovider em arquivo separado da main.dart
- AppBar customizada
- Formatação de valor monetário - package intl 
- Gerenciamento de estado com Bloc e cubit - packages bloc flutter_bloc e equatable
- Loader customizado com o package loader animation widget e snackbar
- Adiciona dev dependencies - build_runner e match_generator para controlar o carregamento do loader
- Uso de herança e mixin com a classe BaseState

## Aula 3

- Tela de detalhes do produto
- Packages - auto_size_text, shared_preferences
- Widget botão de adicionar e remover produtos
- Botão (sacola) que armazena o valor dos produtos comprados
- Tela de login
- Tela de cadastro de usuário

## Aula 4

- Repository de Autorização de login
- Autenticação
- Tela de pedidos
- Rotas de login e cadastro
- Validação de formulário com Validatorless (package)
- Cria endpoint /users no Postman para testar cadastro de usuários
- Implementação do login
- implementação do cadastro
- Uilizando widget Sliver
- Formulário customizado com package - flutter_awesome_select

## Aula 5

- Carregando os produtos na sacola e atualizando ao voltar para o menu
- Implementando authinterceptor para adicionar token na requisição
- Listas formas de pagamento no RadioButton
- Validação de formulário
- Função de adicionar e remover produtos na tela da sacola
- Excluir produto
- Limpar a sacola
- Salvar pedido
- Tratar login expirado


<p><img width="45%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/postman_auth1.png"/><img width="55%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/postman_auth2.png"/></p>

<p>
<img width="30%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/vakinha_burguer.gif"/>
<img width="30%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/erro_snackbar.gif"/>
<img width="30%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/add_remove_product.gif"/>
</p>

<p>
<img width="30%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/sacola_button.gif"/>
<img width="30%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/erro_login.gif"/>
<img width="30%" src="https://github.com/giseletoledo/dw9_delivery_api/blob/master/Screenshots/login_vakinha.gif"/>
</p>






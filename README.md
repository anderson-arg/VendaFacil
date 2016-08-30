

## Descrição do Projeto

Como todos sabem, a internet vem, a cada dia, ganhando mais espaço dentro da nossa sociedade. Nesse contexto, aplicações envolvendo vendas de produtos, anúncios de viagens e redes sociais são diariamente criadas tentando gerar o que o usuári
o comum precisa. Nosso sistema proporciona ao usuario um espaço global de anúncios de vendas de produtos. Onde um usuário poderá cadastrar seu produto para que um outro usuário possa vê-lo.  Dessa forma, facilitamos a vida de 
quem quer comprar um carro, um celular,um imóvel, etc. De modo que, mesmo não agindo diretamente como parte atuante na negociação, facilitaremos a troca de informações entre os interessados. 

#Requisitos
- Cadastrar Usuario
- Cadastrar Produtos
- Tela de login
- Listar Produtos
- Listar produtos por categoria
- Internacionalizacao
- Editar produto
- Excluir Produto
- Pesquisar produto por nome
- Exibir detalhes do produto

#Processo de Instalacao
Para instalar o projeto em sua maquina, a fim de altera-lo e/ou estuda-lo, siga os seguintes passos:
- Abra o prompt de comando
- Escolha um local onde deseja que seu projeto seja baixado
- Em seguida, execute o comando git clone com a seguinte url: https://github.com/anderson-arg/VendaFacil
- Feito isso, a pasta do projeto ja tera sido baixada na sua maquina, entre nela
- Ja estando no diretorio do projeto, execute o comando bundle install
- Em seguita, crie o banco. Para isso, execute o comando rake db:create
- Com o banco criado, execute a migracao: rake db:migrate
- Para popular o banco com dados pre-estabelecidos no arquivo seeds do projeto, execute o comando rake db:seeds
- Agora vamos instalar a gem imagemagick, para isso, execute o comando: sudo apt-get intall imagemagick, caso esteja usando linux, ou brew install imagemagick caso esteja usando mac os.
- Por fim, basta rodar o servidor. Para isso, execute o comando rails -s. Para acessar, copie a url localhost:3000 no seu browser

#Getting Started
Como ponto de partida, o usuario devera fazer cadastro no sistema. De modo que a partir do momento que o tenha feito, sera possivel fazer login no sistema. Feito o login, o usuario estara apto a cadastrar produtos. Com os produtos ja cadastrados, o usuario podera excluir ou editar seus produtos. Nesse caso, o usuario logado so podera fazer isso com os produtos por ele cadastrados. Por fim, os produtos cadastrados serao exibidos na pagina inicial do sistema, para qualquer pessoa que acesse o site. Mesmo que nao se cadastre no sistema, o interessado podera ver os anuncios em detalhes, filtrar a listagem por categoria e buscar produto por nome.

#Descricao das Funcionalidades
No que tange as funcionalidades, o sistema possibilida o cadastro dos produtos, no qual o usuario vendedor devera definir o nome, uma imagem que representa o produto, o seu valor, uma descricao a respeito do produto bem como a categoria do mesmo. Ja no cadastro de usuarios, os campos preenchidos serao: nome, e-mail e senha. A partir do momento que o usuario se cadastra ao sistema, ele estara apto a fazer login no mesmo. O sistema tambem foi traduzido/internacionalizado de modo que facilite a visualizacao por parte do usuario. Partindo disto, o sistema exibira uma lista de produtos, essa exibicao podera ser categorizada de acordo com a escolha do usuario. Alem do filtro por categoria, o sistema tambem possibilita ao usuario a pesquisa pelo nome do produto, de forma a facilitar a sua busca

## Equipe
* Fellipe Freire
* Anderson Araújo

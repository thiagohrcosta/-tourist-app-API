# TOURIST APP

![mainIMG](https://res.cloudinary.com/dloadb2bx/image/upload/v1626556361/touristApp2_rncoc1.png)

O objetivo do presente projeto é desenvolver uma aplicação de cashback onde os usuários receberão um determinado valor conforme o valor fixado por um ingresso.

**O que o visitante pode fazer?**
 - O visitante pode acessar a página principal e visualizar os ingressos ali disponíveis.

**O que o usuário pode fazer?**
- O usuário poderá acessar os detalhes dos ingressos anunciados;
- O usuário poderá comprar um ingresso indicando a quantidade que deseja adquirir;
- O usuário poderá acessar o dashboard para conferir o valor total de seu pedido;
- O usuário poderá acessar o dashboard para conferir o total e cashback que receberá pela compra.

**O que o administrador pode fazer?**
- O administrador poderá visualizar informações gerais de compras, quantidade de ingressos vendidos;

## Tecnologias utilizadas
<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img alt="HTML5" src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white"/> <img alt="SASS" src="https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white"/> <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white"/> <img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white"/>

**Gems utilizadas**
 - [Devise](https://github.com/heartcombo/devise)
 - [Pundit](https://github.com/varvet/pundit)
 - [Simple Token Autentication](https://github.com/gonzalo-bulnes/simple_token_authentication)
 - [Byebug](https://github.com/deivid-rodriguez/byebug)
 - [Rspec](https://github.com/rspec/rspec-rails)
 - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)

## Dados cadastrados
Foram inseridos via seed três empresas, três tickets e diversos pedidos com unidades diferentes de forma a suprir os dados expostos, para maiores detalhes [acesse aqui](https://github.com/thiagohrcosta/tourist-app-API/blob/master/db/seeds.rb).

Para efetuar login e acessar com os usuários e dados já cadastrados utilize os seguintes acessos:

**Login:** admin@admin.com (possui 3 pedidos)
**Password**: "123456"

 **Login:** admin2@admin.com (possui 2 pedidos)
 **Password:** "123456"

**Login:** admin3@admin.com" (não possui pedidos)
**Password:** "123456"

**Login:** "travel@admin.com" (usuário adicional com acesso ao painel de admin)
**Password:**"123456"

## Database
![db](https://res.cloudinary.com/dloadb2bx/image/upload/v1626571265/touristDB_zwmk5j.png)

**Company model**

      belongs_to :user
      has_many :tickets
      validates :name, :logo, :user_id, presence: true

**Ticket model**

      belongs_to :company
      has_many :orders
      validates :company_id, :name, :photo, :price, :cashback, presence: true
      validates :price, :cashback, numericality: true

   **Order model**

      belongs_to :ticket
      belongs_to :user
      has_many :tickets
      validates :user_id, :ticket_id, :quantity, presence: true
      validates :quantity, numericality: true


## API
![Api](https://res.cloudinary.com/dloadb2bx/image/upload/v1626568577/Tourist1_fiv4vv.gif)

O backend da aplicação foi desenvolvido no formato de uma API de forma a suprir os dados do frontend com os seguintes endpoints:


**GET**

    http://localhost:3000/api/v1/companies
    http://localhost:3000/api/v1/tickets
    http://localhost:3000/api/v1/orders
    GET: http://localhost:3000/api/v1/orders
    RESPONSE: [{
    "id": 1,
    "user_id": 1,
    "ticket_id": 1,
    "quantity": 2
    },
    (...)]


**SHOW**

    http://localhost:3000/api/v1/companies/:id
    http://localhost:3000/api/v1/tickets/:id
    http://localhost:3000/api/v1/orders/:id
    GET: http://localhost:3000/api/v1/tickets/1
    RESPONSE:{
      "id": 1,
      "company_id": 1,
      "photo": "https://res.cloudinary.com/dloadb2bx/image/upload/v1626370674/photo-1588852656640-48b816317c25_rofvdl.jpg",
      "price": "100.0",
      "cashback": "0.02"
    }

**PATCH**

    http://localhost:3000/api/v1/companies/:id
    http://localhost:3000/api/v1/tickets/:id
    http://localhost:3000/api/v1/orders/:id
    PATCH: http://localhost:3000/api/v1/companies/1
    RESPONSE: {
        "id": 1,
        "user_id": 1,
        "logo": "https://res.cloudinary.com/dloadb2bx/image/upload/v1626368476/images_iqvkeh.png",
        "name": "Tourism 4All"
      }


Obs: Para melhor utilização do projeto e testes, foi desabilitada a exigência de login para realizar tais ações no controller.


## Página de login e cadastro
![login](https://res.cloudinary.com/dloadb2bx/image/upload/v1626555420/tourismApp1_n6g0gg.png)
O usuário não poderá prosseguir na plataforma vendo detalhes do ingresso salvo se devidamente logado na plataforma, para isso foi utilizada a gem **DEVISE**.

## Página de pedidos
![CashbackImG](https://res.cloudinary.com/dloadb2bx/image/upload/v1626556480/touristApp3_twnnud.png)

Uma vez que o usuário esteja logado e tenha realizado compras no site, ele poderá ver as informações de seu ingresso bem como o total de pedido o Casback de 1% com pagamento pelo cartão e o cashback total fornecido pelas empresas anunciantes dos ingressos.

## Testes com RSPEC
Foram adicionados 15 testes unitários usando a gem **RSPEC**.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1626568154/touristTest_qp7uae.png)

## Etapas de desenvolvimento

**16 de julho**

    - Projeto criado em Rails;
    - Devise instalado;
    - Pundit instalado;
    - Modelos Company, Ticket, Order adicionados;
    - Setup inicial da API configurados;
    - Pundt policy adicionada (liberada para melhor utilização do projeto);
    - Controllers e Views(JSON) para a API criados;

**17 de julho**

    - Seed adicionado;
    - Ações adicionadas aos controllers;
    - Show endpoint adicionado;;
    - Simple token adicionado;
    - Endpoints adicionados;
    - Home page inicial implementada;
    - Show page adicionada com informações básicas;
    - Exibe as "Orders";
    - Correção na rota Dashboard;
    - Corrige rotas na navbar;
    - Implementa lógica na *View(provisória)* e definitiva no controller para calcular o cashback;
    - Adiciona página de login e cadastro;
    - Substitui "carousel slide" por imagem estática e texto;
    - Adiciona página com dashboard geral de vendas;

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

![CashbackImG](https://res.cloudinary.com/dloadb2bx/image/upload/v1626556480/touristApp3_twnnud.png)

## Testes com RSPEC
![test](https://res.cloudinary.com/dloadb2bx/image/upload/v1626568154/touristTest_qp7uae.png)


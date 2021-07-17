User.destroy_all
Company.destroy_all
Ticket.destroy_all
Order.destroy_all

User.create!(
  email: "admin@admin.com",
  password: "123456"
)

User.create!(
  email: "admin2@admin.com",
  password: "123456"
)

User.create!(
  email: "admin3@admin.com",
  password: "123456"
)

Company.create!(
  user_id: 1,
  logo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1626368476/images_iqvkeh.png",
  name: "Fornecedor 1"
)

Company.create!(
  user_id: 2,
  logo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1626485606/images_nggvmp.png",
  name: "Fornecedor 2"
)

Company.create!(
  user_id: 3,
  logo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1626485737/aviation_logo-22_bq764w.jpg",
  name: "Fornecedor 3"
)

Ticket.create!(
  company_id: 1,
  name: "Parque Ecológico",
  price: 100,
  cashback: 0.02,
  photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1626370674/photo-1588852656640-48b816317c25_rofvdl.jpg"
)

Ticket.create!(
  company_id: 2,
  name: "Rio da Prata",
  price: 200,
  cashback: 0.03,
  photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1626387200/photo-1501785888041-af3ef285b470_at9cnx.jpg"
)

Ticket.create!(
  company_id: 3,
  name: "Lago Misteriosa",
  price: 150,
  cashback: 0,
  photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1626486035/photo-1516293635722-a0ae2709d570_heqpsi.jpg"
)

Order.create!(
  user_id: 1,
  ticket_id: 1 ,
  quantity: 2
)

Order.create!(
  user_id: 1,
  ticket_id: 2 ,
  quantity: 2
)

Order.create!(
  user_id: 1,
  ticket_id: 3 ,
  quantity: 2
)

Order.create!(
  user_id: 2,
  ticket_id: 1 ,
  quantity: 3
)

Order.create!(
  user_id: 2,
  ticket_id: 3 ,
  quantity: 3
)

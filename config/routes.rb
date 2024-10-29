Rails.application.routes.draw do
  get("",{:controller=>"home",:action=>"home"})
  get("/square/results",{:controller=>"square",:action=>"square"})
  get("/square/new",{:controller=>"home",:action=>"home"})
  get("/square_root/new",{:controller=>"root",:action=>"new"})
  get("/square_root/results",{:controller=>"root",:action=>"root"})
  get("/payment/new",{:controller=>"payment",:action=>"new"})
  get("/payment/results",{:controller=>"payment",:action=>"result"})
  get("/random/new",{:controller=>"random",:action=>"new"})
  get("/random/results",{:controller=>"random",:action=>"result"})
end

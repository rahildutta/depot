ActiveAdmin.register LineItem do
  filter :created_at
  filter :updated_at
  filter :quantity
  filter :product_id,label:"Product Id"
  filter :cart_id,label:"Cart Id"
  filter :id,label:"LineItem Id"
end

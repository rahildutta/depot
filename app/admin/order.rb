ActiveAdmin.register Order do
  filter :id, label: "Order Id"
  filter :pay_type,:as => :select,collection: -> { Order::PAYMENT_TYPES }
  filter :created_at
  filter :updated_at
end

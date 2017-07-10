ActiveAdmin.register User do
  filter :id,label: "User Id"
  filter :name,as: :string
  filter :updated_at
  filter :created_at
end

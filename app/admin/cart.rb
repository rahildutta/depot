ActiveAdmin.register Cart do
  filter :created_at
  filter :updated_at
  filter :user_id,label: "USER ID"
end

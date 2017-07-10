ActiveAdmin.register Product do
 permit_params :title, :description, :img_url, :price
 filter :price
 filter :created_at
 filter :updated_at
end

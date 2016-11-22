ActiveAdmin.register User do
  menu parent: 'Accounts', priority: 1
  permit_params :email, :password

  # Index page
  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Edit user details" do
      f.input :email
      f.input :password
    end
    f.actions
  end

  filter :email
  filter :created_at
  filter :sign_in_count
end
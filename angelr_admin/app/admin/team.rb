ActiveAdmin.register Team do
  menu parent: 'Startups', priority: 2
  permit_params :startup_id,
                :name,
                :role,
                :facebook_url,
                :twitter_url,
                :linkedin_url

  index do
    selectable_column
    id_column
    column :startup_id
    column :name
    column :role
    actions
  end

  filter :startup_id
  filter :name
  filter :role

  form do |f|
    f.inputs "Edit Team details" do
      f.input :startup_id
      f.input :name
      f.input :role
      f.input :facebook_url
      f.input :twitter_url
      f.input :linkedin_url
    end
    f.actions
  end

  sidebar "Startup", only: :show do
    attributes_table_for team.startup do
      row('Startup ID'){ |p| p.id }
      row('Name'){ |p| p.name }
      row('Website'){ |p| p.website_url }
      row('Joined'){ |p| p.created_at }
    end
  end

  active_admin_importable do |model, hash|
    Import::Profile.import(hash)
  end
end
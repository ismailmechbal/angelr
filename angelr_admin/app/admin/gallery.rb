ActiveAdmin.register Gallery do
  menu parent: 'Startups', priority: 3
  permit_params :startup_id

  index do
    selectable_column
    id_column
    column :startup_id
    actions
  end

  filter :startup_id

  form do |f|
    f.inputs "Edit Gallery details" do
      f.input :startup_id
    end
    f.actions
  end

  sidebar "Startup", only: :show do
    attributes_table_for gallery.startup do
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
ActiveAdmin.register Startup do
  menu parent: 'Startups', priority: 1
  permit_params :user_id,
                :name,
                :short_desc,
                :long_desc,
                :website_url,
                :video_url,
                :note_founded,
                :note_team_size,
                :note_traction,
                :is_active

  index do
    selectable_column
    id_column
    column :name
    column :website_url
    column :is_active
    actions
  end

  filter :user_id
  filter :name

  form do |f|
    f.inputs "Edit Startup details" do
      f.input :user_id
      f.input :name
      f.input :short_desc
      f.input :long_desc
      f.input :website_url
      f.input :video_url
      f.input :note_founded
      f.input :note_team_size
      f.input :note_traction
      f.input :is_active
    end
    f.actions
  end

  sidebar "User", only: :show do
    attributes_table_for startup.user do
      row('User ID'){ |p| p.id }
      row('Email'){ |p| p.email }
      row('Created at'){ |p| p.created_at }
      row('Sign in count'){ |p| p.sign_in_count }
    end
  end

  active_admin_importable do |model, hash|
    Import::Profile.import(hash)
  end
end
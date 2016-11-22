ActiveAdmin.register Attachment do
  menu parent: 'Startups', priority: 5
  permit_params :attachable_id,
                :attachable_type,
                :attachment

  index do
    selectable_column
    id_column
    column :attachable_id
    column :attachable_type
    actions
  end

  filter :attachable_type

  form do |f|
    f.inputs "Edit Attachment details" do
      f.input :attachable_id
      f.input :attachable_type
      f.input :attachment
    end
    f.actions
  end

end
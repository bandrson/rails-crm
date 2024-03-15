ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image
  remove_filter :image_attachment, :image_blob

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end

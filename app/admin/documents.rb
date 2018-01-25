ActiveAdmin.register Document do
    permit_params :file_name

    index do
      selectable_column
      id_column
      actions
    end
  
    filter :file_name
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :file_name
      end
      f.actions
    end
  
  end
  
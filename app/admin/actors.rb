ActiveAdmin.register Actor do
    permit_params :category, :first_name, :last_name, :lifen_uuid, :reference, :confidence
  
    index do
      selectable_column
      id_column
      column :first_name
      column :last_name
      column :lifen_uuid
      column :reference
      column :confidence      
      actions
    end
  
    filter :first_name
    filter :last_name
    filter :lifen_uuid
    filter :confidence
    filter :category
  
    form do |f|
      f.inputs do
        f.input :first_name
        f.input :last_name
        f.input :confidence
        f.input :category
      end
      f.actions
    end
  
  end
  
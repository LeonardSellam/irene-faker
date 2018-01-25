ActiveAdmin.register DocumentReference do
    permit_params :file_name, :ocr_was_used

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
        f.input :ocr_was_used,as: :select, collection: [0,1], include_blank: false        
      end
      f.actions
    end

    show title: :to_s do 

       panel "Senders" do 
         table_for(document_reference.senders) do        
           column("") { |s| link_to s.id, admin_sender_path(s) }
           column :last_name
           column :reference
         end
       end
    

      panel "Destinataires (Actor)" do
        table_for(document_reference.actors) do
          column :last_name
          column :reference
          column :confidence
          column :category
        end
      end

       panel "Patients" do
         table_for(document_reference.patients) do
           column :last_name
           column :first_name
           column :confidence
         end
       end
    end
  
  end
  
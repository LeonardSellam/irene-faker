class DocumentReference < ApplicationRecord
    has_many :actors
    has_many :senders
    has_many :patients

    def get_irene_payload 

        actors.each do |actor|
            irene_payload[:recipient] << actor.to_irene_payload
        end

        senders.each do |sender| 
            irene_payload[:sender] << sender.to_irene_payload            
        end

        patients.each do |patient| 
            irene_payload[:patient] << patient.to_irene_payload            
        end
        irene_payload
    end

    def irene_payload
        @_irene_payload ||= {recipient: [], sender: [], patient: [], ocr_was_used: ocr_was_used }
    end
end
  
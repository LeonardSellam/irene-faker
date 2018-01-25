class Sender < ApplicationRecord
    belongs_to :document_reference

    def to_irene_payload
        {
            first_name: first_name,
            last_name: last_name,
            reference: reference,
            confidence: confidence
        }
    end
end
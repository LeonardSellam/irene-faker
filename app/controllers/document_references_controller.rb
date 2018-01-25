class DocumentReferencesController < ApplicationController

    def show
      @document = DocumentReference.find_by(file_name: file_name) 

      if @document
        payload = @document.get_irene_payload
      else
        payload = {result: "none"}
      end

      render json: payload
    end

    private
  
      def file_name
        @_file_name ||= params[:id]
      end

  
  end
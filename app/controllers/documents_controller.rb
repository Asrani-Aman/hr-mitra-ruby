class DocumentsController < ApplicationController
    before_action :set_document, only: [:show, :edit, :update, :destroy]
    def index
        @documents = Document.all
    end
    def new
        @document = Document.new
    end
    def create
        @document = Document.new(allowed_document_params)
        if @document.save
            redirect_to documents_path, notice: "Document was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end
    def edit
    end
    def update
        if @document.update(allowed_document_params)
            redirect_to documents_path, notice: "Document was successfully updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @document.destroy
        redirect_to documents_path, notice: "Document was successfully deleted."
    end
end

private
def set_document
    @document = Document.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
        redirect_to documents_path, notice: e
end
# This method defines strong parameters, which allow only specific attributes to be passed in the params hash.
def allowed_document_params
    params.require(:document).permit(:name, :doc_type, :employee_id)
end
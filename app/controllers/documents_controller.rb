class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def download
    set_document
    send_document(@document.document_path)
  end

  def create
    document = Document.new(document_params)
    # document.owner = current_user
    if document.save
      puts ">>>>>>>>>>>>>>>++++++++++++++"
      redirect_to documents_path, notice: "Successfully uploaded."
    else
      render "new"
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path, notice:  "Successfully deleted."
  end

   private

   def document_params
    params.permit(
      :document_name,
      :document_url, 
      :document_description
    )
  end


  private 
  def set_document
    @document = Document.find(params[:id])
  end
end

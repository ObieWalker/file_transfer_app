class FilesController < ApplicationController
  # before_action :set_file

  def index
    @files = File.all
  end

  def download
    set_file
    send_file(@file.file_path)
  end

  def create
    file = File.new(file_params)
    file.user = current_user
    file.file.attach(file_params[:file])
    if file.save
      redirect_to files_path
    else
      redirect_to new_file_path
    end
  end

   private

   def file_params
    params.permit(:title, :description, :file)
  end


  private 
  def set_file
    @file = File.find(params[:id])
  end
end

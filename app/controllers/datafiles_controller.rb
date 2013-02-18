class DatafilesController < ApplicationController
  def show
        @filename = Datafile.find(params[:id])
        send_data @filename.data, :filename => @attachment.filename, :type => @attachment.content_type
  end


  def create
    @filename=params[:data]
    flash[:notice] = "controller"
    return if params[:data].blank?
     

    flash[:notice] = "controller"
    @filename=Datafile.new
=begin
    @file.uploaded_file = params[:datafile]
    flash[:notice] = "model reached"

    if Datafile.new.save
      flash[:notice] = "Thank you for your submission..."
      redirect_to :action => "index"
    else
      flash[:error] = "There was a problem submitting your attachment."
      render :action => "new"
    end
=end
  end
end

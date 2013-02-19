class DatafilesController < ApplicationController
  def show
        @filename = Datafile.find(params[:id])
        send_data @filename.data, :filename => @attachment.filename, :type => @attachment.content_type
  end


  def create
    @parameters = params
    @file_metadata = params[:data]
    @file = Datafile.new


    #@file.uploaded_file = @file_metadata

=begin
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

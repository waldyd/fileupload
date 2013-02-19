class DatafilesController < ApplicationController
  def index
    render 'datafiles/create'
  end
  def show
        @filename = Datafile.find(params[:id])
        send_data @filename.data, :filename => @attachment.filename, :type => @attachment.content_type
  end

  def create
    @file_metadata = params[:attachment]
    @file = Datafile.new

    #redirect_to :action => "index" if @file_metadata.nil?

    @file.persistFileParam = @file_metadata
    @file.saveFile = @file_metadata 
=begin    if @file_metadata #@file.saveFile
      flash[:notice] = "Thank you for your submission..."
      #redirect_to :action => "index"
    else
      flash[:error] = "There was a problem submitting your attachment."
      #render :action => "new"
    end
=end
  end
end

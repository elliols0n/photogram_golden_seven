class PicturesController < ApplicationController
  def new_form
    
     render("pictures/new_form.html.erb")
  end
  
  def create_row
  # The Parameters: {"the_source" => "hi", "the_caption" => "there"}
      p = Photo.new
      
      p.source = params[:the_source]
      p.caption = params[:the_caption]
      
      p.save
      
      @current_count = Photo.count
      
      render("pictures/create_row.html.erb")
  end
  
  # def index
  #   @pics = Photo.find(params["the_id"])
  #   # @show_all_pics = Photo.order(:created_at => DESC)
  #   render("pictures/index.html.erb")
  # end
  
  def show
    # Here are the Parameters: {"an_id" => "5"}
    #  
    #Long first version
    #
    # the_id = params["the_id"]
    # @current_id_source = Photo.find(the_id).source
    # @current_id_caption = Photo.find(the_id).caption    
    # 
    # Shorter second version
    # 
    # pic = Photo.find(the_id_number)
    # @the_source = pic.source 
    # @the_caption = pic.caption
    #
    # Shortest last version we'll use

    @pic = Photo.find(params[:the_id])
    render("pictures/show.html.erb")
  end
  
  def edit_form
    @pic = Photo.find(params[:an_id])
    render("pictures/edit_form.html.erb")
  end
  
  def update_row
    @pic = Photo.find(params["some_id"])
    render("pictures/update_row.html.erb")
  end
  
end
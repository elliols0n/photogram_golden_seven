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
  
  
  # def show
    # Here are the Parameters: {"an_id" => "5"}
    #  
    #Long first version
    #
    #  the_id_number = params["an_id"]
    #  @the_source = Photo.find(the_id_number).source
    #  @the_caption = Photo.find(the_id_number).caption
    # 
    # Shorter second version
    # 
    # pic = Photo.find(the_id_number)
    # @the_source = pic.source 
    # @the_caption = pic.caption
    #
    # Shortest last version we'll use

  #   @pic = Photo.find(params["an_id"])
  #   render("/pic_templates/show.html.erb")
  # end
end
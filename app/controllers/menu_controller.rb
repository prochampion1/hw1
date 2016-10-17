class MenuController < ApplicationController
  def index
    if params[:section]
      @fooditems = Fooditem.where({section: params[:section].downcase})
    else
      @fooditems = Fooditem.all
    end
   
   # if params[:search]
   #    @fooditems= Fooditem.where("lower(name)LIKE ? OR lower(description) LIKE ?", "%#{params[:search].try(:downcase)}%", "%#{params[:search].try(:downcase)}%")
   # end
   
    case params[:orderby]
    when "alphabet"
      
      @fooditems.order(:name)
    when "prlowtohigh"
      p @fooditems
      
      @fooditems.order(:price)

    when "prhightolow"
      p @fooditems
      @fooditems.order(price: :desc)
    else
      @fooditems
    end


end
end






class MenuController < ApplicationController
      def index
      @fooditems = Fooditem.all
       if params[:section] 
        @section =Section.where(name:params[:section]).first
        @fooditems = @section.fooditems
      end

      case params[:orderby]
         when  "alphabet"
        @fooditems= Fooditem.order(:name)
         when  "prlowtohigh" 
        @fooditems=Fooditem.order(:price)

        when  "prhightolow"
        @fooditems=Fooditem.order(price: :desc)
      else
        @fooditems = Fooditem.all
      end
      if params[:search]
      @fooditems= Fooditem.where("lower(title)LIKE ? OR lower(description) LIKE ?", "%#{params[:search].try(:downcase)}%", "%#{params[:search].try(:downcase)}%")
      end
      # if params[:search]
      #    @fooditems= Fooditem.where("lower(name)LIKE ? OR lower(description) LIKE ?", "%#{params[:search].try(:downcase)}%", "%#{params[:search].try(:downcase)}%")
      # end

      end
end






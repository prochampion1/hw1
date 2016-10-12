class MenuController < ApplicationController
  def index
    @fooditems = Fooditem.all
  end
end
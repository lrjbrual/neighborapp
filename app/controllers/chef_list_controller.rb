class ChefListController < ApplicationController
  def index
    @cheflist = "The amazing chef's"
  	@chefs = User.where(:is_chef => true)
  end

  def show
    @user = User.find(params[:id])
  end

end

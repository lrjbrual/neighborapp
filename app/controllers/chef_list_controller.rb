class ChefListController < ApplicationController
  def index
  	@chefs = User.where(:is_chef => true)
  end
end

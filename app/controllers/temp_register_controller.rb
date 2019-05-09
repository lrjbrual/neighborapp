class TempRegisterController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)
    @user.is_chef = 1
    @user.is_customer = 1
    if @user.save
      redirect_to chef_list_index_path, :notice => "User successfully created"
    else
      flash.now.alert = 'User failed to create'
      redirect_to temp_register_index_path
    end
  end

  private
    def user_params
      params.require(:user).permit(
        :email, 
        :firstname, 
        :lastname, 
        :address, 
        :zipcode, 
        :country, 
        :phone, 
        :expertise
      )
    end
end

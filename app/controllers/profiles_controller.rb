class ProfilesController < ApplicationController
  def show
    @user = User.find_by_user_name(params[:id])
    unless @user
      redirect_to root_path
    end
  end
end

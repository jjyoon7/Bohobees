class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    @profile = User.find(params[:id])
    @profile = User.update(profile_validation)
  end

  private

  def profile_validation
    params.require(:user).permit(:email, :password, :first_name, :last_name, :photo, :city, :street_address)
  end

end

class ProfilesController < ApplicationController
  def show
    @profile = current_user
  end

  def edit
    # @profile = User.find(params[:id])
    @user = current_user
  end

  def update
    @profile = current_user
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def profile_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :photo, :city, :street_address, :interest, :visit, :future_visit)
  end

end

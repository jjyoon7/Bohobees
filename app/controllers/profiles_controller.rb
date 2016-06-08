class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    @profile = User.find(params[:id])
    @profile = User.update()
  end

  private

  def
    params.require(:user).permit()
  end

end

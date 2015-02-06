class UsersController < ApplicationController
	before_filter :check_if_admin
	before_filter :authenticate_user!

def check_if_admin
 # if signed_in?
  # respond_to do |format|
  #    format.html { redirect_to root_path }
  #    format.json { head :no_content }
  # end unless 
  #end
end
def index 
	@users = User.all
	if current_user.is_admin?
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user }
	 end
	else
	respond_to do |format|
    format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
end
def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
end

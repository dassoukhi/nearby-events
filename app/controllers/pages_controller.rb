class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @events = policy_scope(Event.search(nil))
  end

  def dashboard
    @user = current_user
  end

  def proposition

    if current_user.admin?
      @events = Event.where(visible: nil)
    else
      redirect_to root_path, notice: "Vous n'avez pas l'autorisation requise pour acceder à cette page"
    end
  	
  end
  def member
    
    if current_user.admin?
      @users = User.where(admin: nil)
    else
      redirect_to root_path, notice: "Vous n'avez pas l'autorisation requise pour acceder à cette page"
    end
    
  end
end

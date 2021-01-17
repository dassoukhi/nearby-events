class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @events = policy_scope(Event)
  end

  def dashboard
    @user = current_user
  end

  def proposition
  	@events = Event.where(visible: nil)
  end
  def member
    @users = User.where(admin: nil)
  end
end

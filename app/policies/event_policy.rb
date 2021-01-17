class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(visible: true)
    end
  end
  def new?
	true
  end
  def show?
	true
  end
  def create?
	new?
  end
  def edit?
	record.user == user || user.admin
  end
  def update?
	edit?  
  end

  def destroy?
  	true
  end
end

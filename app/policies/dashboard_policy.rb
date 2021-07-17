class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    false
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end
end

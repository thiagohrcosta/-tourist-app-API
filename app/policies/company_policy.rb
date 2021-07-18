class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
    # adicionado true para testes
    # exigir que o current_user.id seja igual o company.user_id
    # para permitir a exclusão
  end
end

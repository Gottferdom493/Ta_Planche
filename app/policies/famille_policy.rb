class FamillePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  # def show?
  #   true
  # end

  def update?
    record.user == user
    # false
  end

  def destroy?
    record.user == user
    # false
  end
end

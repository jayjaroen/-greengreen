class ChallengeCategoryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def new?
    user.admin == true
  end

  def create?
    user.admin == true
  end
end

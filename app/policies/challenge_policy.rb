class ChallengePolicy < ApplicationPolicy
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
    if user != nil
      user.admin == true
    end
  end
end

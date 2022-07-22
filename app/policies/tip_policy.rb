class TipPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    user.admin == true
  end

  def create?
    if user != nil # the user is signed in
      user.admin == true
    end
  end

end

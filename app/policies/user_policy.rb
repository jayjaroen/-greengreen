class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def profile?
    true
  end

  def tracking_record?
    true
  end

  def edit?
    user == record || user.admin
  end

  def update?
    user == record || user.admin
  end
end

class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # Gives access to all restaurants (only for index)
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def search?
    true
  end
end

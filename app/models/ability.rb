class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.role == "admin"
        can :manage, :all
      elsif user.role == "manager"
        can [:index, :show], Setting
        can [:index, :show, :new, :edit, :create, :update], User
        can [:complete, :close], Request
      elsif user.role == "requester"
        can [:show, :edit, :update, :destroy]. User, :id => user.id
        can [:show, :create], Request, :user_id => user.id
      end
    else
      can :create, User
    end
  end
end

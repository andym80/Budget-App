# ability
class Ability
  include CanCan::Ability

  def initialize(user)
    # Allow the user to manage their own User, Entity, and Group records

    can :manage, User, user:current_user
    can :manage, Entity, user:current_user
    can :manage, Group, user:current_user

    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end

# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless current_user.present?
    can :manage, User, user:current_user
    can :manage, Entity, user:current_user
    can :manage, Group, user:current_user

    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end

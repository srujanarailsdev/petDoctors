class Ability
  include CanCan::Ability
  def initialize(profile)
    profile ||= Profile.new

    if profile.type? "Receptionist"
      can :create, Appointment
      can :update, Appointment
      can :show, Appointment
      can :delete, Appointment
      can :read, :all
      can :manage, :all
   else
      if profile.type? "Doctor"
        can :manage, :all
      end

      if profile.type? "Customer"
        can :update, Profile
        
        can :read, :all
      end
    end
  end
end

module TicketsGuardian
  def can_create_ticket?(topic)
    can_perform_action_available_to_group_moderators?(topic) && SiteSetting.tickets_enabled
  end
end

require_dependency 'guardian'
class ::Guardian
  include TicketsGuardian
end

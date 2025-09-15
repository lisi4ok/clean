module HasStatus
  extend ActiveSupport::Concern

  included do
    enum status: {
      open: 1,
      closed: 2,
      customer: 3,
      support: 4,
      admin: 5,
      partner: 6
    }.freeze
  end
end

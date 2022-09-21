module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['unresolved', 'resolved', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end


  class_methods do
    def public_count
      where(status: 'unresolved').count
    end
    def resolved_count
        where(status: 'resolved').count
    end
  end

    def archived?
        status == 'archived'
    end
end
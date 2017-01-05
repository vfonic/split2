module Concerns::ActsAsAddress
  extend ActiveSupport::Concern

  included do
    def name
      "#{first_name} #{last_name}".strip
    end

    def street
      "#{address1} #{address2}".strip
    end
  end
end

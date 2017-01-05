module Concerns::ActsAsAddress
  extend ActiveSupport::Concern

  included do
    def street
      "#{address1} #{address2}".strip
    end
  end
end

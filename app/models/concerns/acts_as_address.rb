module Concerns::ActsAsAddress
  extend ActiveSupport::Concern

  included do
    belongs_to :customer

    def street
      "#{address1} #{address2}".strip
    end
  end
end

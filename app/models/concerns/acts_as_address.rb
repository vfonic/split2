module ActsAsAddress
  extend ActiveSupport::Concern

  included do
    belongs_to :customer

    def street
      if address1.present? && address2.present?
        "#{address1}, #{address2}"
      else
        address1 || address2 || ''
      end
    end
  end
end

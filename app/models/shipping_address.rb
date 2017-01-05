class ShippingAddress < ActiveRecord::Base
  include Concerns::ActsAsAddress
  include Concerns::ActsAsFullName
end

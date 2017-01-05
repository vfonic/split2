class BillingAddress < ActiveRecord::Base
  include Concerns::ActsAsAddress
  include Concerns::ActsAsFullName
end

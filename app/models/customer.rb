class Customer < ActiveRecord::Base
  include Concerns::ActsAsFullName
end

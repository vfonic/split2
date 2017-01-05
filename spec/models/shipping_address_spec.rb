require 'rails_helper'

RSpec.describe ShippingAddress, type: :model do
  it_behaves_like 'address'
  it_behaves_like 'full_name'
end

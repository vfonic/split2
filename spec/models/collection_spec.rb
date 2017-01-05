# == Schema Information
#
# Table name: collections
#
#  id              :integer          not null, primary key
#  default_sort_by :string
#  description     :text
#  published_at    :datetime
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe Collection, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

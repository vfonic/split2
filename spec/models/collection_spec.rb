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

RSpec.describe Collection, type: :model do
end

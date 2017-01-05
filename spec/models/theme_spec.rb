# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  active     :boolean          default(FALSE)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_themes_on_active  (active)
#

require 'rails_helper'

RSpec.describe Theme, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

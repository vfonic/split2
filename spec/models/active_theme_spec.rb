# == Schema Information
#
# Table name: active_themes
#
#  id         :integer          not null, primary key
#  theme_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_active_themes_on_theme_id  (theme_id)
#

require 'rails_helper'

RSpec.describe ActiveTheme, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

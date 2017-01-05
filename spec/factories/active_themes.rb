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

FactoryGirl.define do
  factory :active_theme do
    theme_id 1
  end
end

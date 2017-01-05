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

    before(:create) do |active_theme|
      old_active_theme = ActiveTheme.first
      if old_active_theme
        theme_id = active_theme.theme_id
        active_theme = old_active_theme
        active_theme.theme_id = theme_id
      end
    end
  end
end

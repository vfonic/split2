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

FactoryGirl.define do
  factory :theme do
    title "MyString"
  end
end

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

FactoryGirl.define do
  factory :collection do
    default_sort_by 'MyString'
    description 'MyText'
    published_at '2017-01-05 23:26:28'
    title 'MyString'
  end
end

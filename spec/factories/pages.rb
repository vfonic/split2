# == Schema Information
#
# Table name: pages
#
#  id              :integer          not null, primary key
#  author          :string
#  title           :string
#  handle          :string
#  body_html       :text
#  published_at    :datetime
#  template_suffix :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_pages_on_handle  (handle)
#

FactoryGirl.define do
  factory :page do
    author 'MyString'
    title 'MyString'
    handle 'MyString'
    body_html 'MyText'
    published_at '2017-01-07 02:22:24'
    template_suffix 'MyString'
  end
end

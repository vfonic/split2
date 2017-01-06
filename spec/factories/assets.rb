# == Schema Information
#
# Table name: assets
#
#  id           :integer          not null, primary key
#  theme_id     :integer
#  content_type :string
#  public_url   :string
#  size         :integer
#  key          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  file         :string
#
# Indexes
#
#  index_assets_on_theme_id  (theme_id)
#

FactoryGirl.define do
  factory :asset do
    theme_id 1
    content_type 'MyString'
    public_url 'MyString'
    size 1
    key 'MyString'
    file do
      Rack::Test::UploadedFile.new(
        File.join(
          Rails.root, 'spec', 'data', 'simple.liquid'
        )
      )
    end
  end
end

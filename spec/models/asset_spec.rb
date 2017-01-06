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

RSpec.describe Asset, type: :model do
  context '#file' do
    it 'uploads the file locally' do
      create(:asset)
    end
  end
end

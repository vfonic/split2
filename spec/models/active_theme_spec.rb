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
  describe 'active' do
    it 'should not allow destroying of active theme' do
      theme = create(:theme)
      active_theme = create(:active_theme, theme: theme)

      theme.destroy

      expect(theme.errors.full_messages).to eq(
        ['Cannot delete record because a dependent active theme exists']
      )
    end
  end
end

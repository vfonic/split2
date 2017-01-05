# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

RSpec.describe Theme, type: :model do
  describe 'active_theme' do
    it 'should not allow destroying of active theme' do
      theme = create(:theme)
      create(:active_theme, theme: theme)

      theme.destroy

      expect(theme.errors.full_messages).to eq(
        ['Cannot delete record because a dependent active theme exists']
      )
    end
  end

  describe '#role' do
    it 'should have "main" role if active theme' do
      theme = create(:theme)
      create(:active_theme, theme: theme)

      expect(theme.role).to eq('main')
    end

    it 'should have "unpublished" role if inactive theme' do
      theme = create(:theme)

      expect(theme.role).to eq('unpublished')
    end
  end
end

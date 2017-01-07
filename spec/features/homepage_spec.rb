RSpec.feature 'homepage acceptance tests', type: :feature do
  describe 'loading homepage' do
    before(:all) do
      theme = create(:theme)
      create(:active_theme, theme: theme)
    end

    xit 'loads the page without errors' do
      visit root_path
    end
  end
end

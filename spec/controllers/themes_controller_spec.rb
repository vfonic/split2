# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

RSpec.describe ThemesController do
  describe '#index' do
    context 'without existing active theme' do
      it 'renders "skeleton" theme' do
        get :index

        expect(response)
          .to render_template(LiquidController::DEFAULT_THEME_NAME)
      end
    end

    context 'without theme associated with active theme' do
      it 'renders "skeleton" theme' do
        create(:active_theme, theme: nil)

        get :index

        expect(response)
          .to render_template(LiquidController::DEFAULT_THEME_NAME)
      end
    end

    context 'without existing active theme directory' do
      it 'renders "skeleton" theme' do
        theme = create(:theme)
        create(:active_theme, theme: theme)

        get :index

        expect(response)
          .to render_template(LiquidController::DEFAULT_THEME_NAME)
      end
    end

    context 'with existing active theme directory' do
      it 'renders active theme' do
        theme = create(:theme)
        create(:active_theme, theme: theme)
        allow(Dir).to receive(:exist?).and_return true

        expect { get :index }.to raise_error ActionView::MissingTemplate
      end
    end
  end
end

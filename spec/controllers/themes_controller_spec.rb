RSpec.describe ThemesController do
  describe '#index' do
    context 'without existing active theme' do
      it 'renders "simple" layout' do
        get :index

        expect(response).to render_template('simple')
      end
    end

    context 'without theme associated with active theme' do
      it 'renders "simple" layout' do
        active_theme = create(:active_theme, theme: nil)

        get :index

        expect(response).to render_template('simple')
      end
    end

    context 'without existing active theme directory' do
      it 'renders "simple" layout' do
        theme = create(:theme)
        active_theme = create(:active_theme, theme: theme)

        get :index

        expect(response).to render_template('simple')
      end
    end

    context 'with existing active theme directory' do
      it 'renders active theme' do
        theme = create(:theme)
        active_theme = create(:active_theme, theme: theme)
        allow(Dir).to receive(:exists?).and_return true

        expect do
          get :index
        end.to raise_error ActionView::MissingTemplate
      end
    end
  end
end

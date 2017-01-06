class ThemesController < LiquidController
  DEFAULT_THEME_NAME = 'simple'.freeze

  # layout :theme_path

  def index
    template = Liquid::Template.parse(layout_theme_asset.file.read)
    render text: template.render({}, liquid_filters), layout: false
  end
end

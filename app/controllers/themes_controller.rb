class ThemesController < LiquidController
  # DEFAULT_THEME_NAME = 'simple'.freeze

  layout :theme_layout_file

  def theme_layout_file
    "../themes/#{ActiveTheme.first.theme_id}/layout/theme"
  end

  def index
    template = Liquid::Template.parse(layout_theme_asset.file.read)
    render text: template.render({}, liquid_filters), layout: false
  end
end

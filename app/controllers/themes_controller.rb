class ThemesController < LiquidController
  DEFAULT_THEME_NAME = 'simple'.freeze

  layout :theme_path

  def index; end
end

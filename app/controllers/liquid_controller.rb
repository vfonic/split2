class LiquidController < ApplicationController
  DEFAULT_THEME_NAME = 'skeleton-theme/layout/theme'.freeze

  before_action :theme_path

  def theme_path
    @theme_path ||= theme_file_path
  end

  def liquid_filters
    [UrlFilters]
  end

  private

  def theme_file_path
    @active_theme = ActiveTheme.first
    return DEFAULT_THEME_NAME unless @active_theme
    @theme = @active_theme.theme
    return DEFAULT_THEME_NAME unless @theme && Dir.exist?("../#{@theme.id}")

    "../#{@theme.id}/theme"
  end
end

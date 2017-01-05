class ThemesController < ApplicationController
  DEFAULT_THEME_NAME = 'simple'.freeze

  layout :theme_file_path

  def index; end

  private

  def theme_file_path
    @active_theme = ActiveTheme.first
    return DEFAULT_THEME_NAME unless @active_theme
    @theme = @active_theme.theme
    return DEFAULT_THEME_NAME unless @theme && Dir.exist?("../#{@theme.id}")

    "../#{@theme.id}/theme"
  end
end

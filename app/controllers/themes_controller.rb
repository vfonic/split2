class ThemesController < ApplicationController
  layout :get_theme_file_path

  def index
  end

  private
    def get_theme_file_path
      @theme = ActiveTheme.first.theme
      "../#{@theme.id}/theme"
    end
end

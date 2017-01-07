class ThemesController < LiquidController
  layout :theme_layout_file

  def theme_layout_file
    "../themes/#{ActiveTheme.first.theme_id}/layout/theme"
  end
end

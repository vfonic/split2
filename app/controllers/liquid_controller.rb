class LiquidController < ApplicationController
  include ApplicationHelper
  # DEFAULT_THEME_NAME = 'skeleton-theme/layout/theme'.freeze

  before_action :theme

  def liquid_filters
    [UrlFilters]
  end

  private

  # def theme_file_path
  #   # @active_theme = ActiveTheme.first
  #   # return DEFAULT_THEME_NAME unless @active_theme
  #   # @theme = @active_theme.theme
  #   # return DEFAULT_THEME_NAME unless @theme && Dir.exist?("../#{@theme.id}")

  #   @layout_theme_asset = @theme.assets.where(key: 'layout/theme.liquid').first

  #   # "../#{@theme.assets.where(key: 'layout/theme.liquid').first.file.path}"
  #   # Pathname.new(layout_theme_asset.file.path).relative_path_from(Rails.root.join('app','views','layouts')).to_s
  #   "../../public/uploads/asset/file/66/theme.liquid"
  # end
end

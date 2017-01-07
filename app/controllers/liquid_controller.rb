class LiquidController < ApplicationController
  include ApplicationHelper

  layout :theme_layout_file

  def liquid_assigns
    {}
  end

  def liquid_filters
    [UrlFilters]
  end

  def theme_layout_file
    "../themes/#{ActiveTheme.first.theme_id}/layout/theme"
  end
end

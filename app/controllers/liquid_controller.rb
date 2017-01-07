class LiquidController < ApplicationController
  include ApplicationHelper

  def liquid_filters
    [UrlFilters]
  end
end

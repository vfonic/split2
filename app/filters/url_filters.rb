module UrlFilters
  include ApplicationHelper

  def asset_url(asset_name)
    asset_name
  end

  def stylesheet_tag(stylesheet_path)
    %(<link rel="stylesheet" href="#{stylesheet_path}">)
  end
end

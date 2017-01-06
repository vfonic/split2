module UrlFilters
  include ApplicationHelper

  def asset_url(asset_name)
    asset_url_for_key("assets/#{asset_name}").file.url
  end

  def stylesheet_tag(stylesheet_path)
    %(<link rel="stylesheet" href="#{stylesheet_path}">)
  end
end

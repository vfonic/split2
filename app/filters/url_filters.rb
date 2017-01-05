module UrlFilters
  def asset_url(asset_name, value = '')
    "#{asset_name}+#{value}"
  end

  def stylesheet_tag(stylesheet_path)
    %(<link rel="stylesheet" href="#{stylesheet_path}">)
  end
end

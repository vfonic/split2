module ApplicationHelper
  def theme
    @theme ||= ActiveTheme.first.theme
  end

  def theme_assets
    @theme_assets ||= theme.assets
  end

  def asset_url_for_key(key)
    url = theme_assets.where(key: key).first
    return url if url.present?
    url = theme_assets.where(key: key.gsub(/css$/, 'liquid')).first
    return url if url.present?
    'nothing'
  end

  def layout_theme_asset
    @layout_theme_asset ||= asset_url_for_key('layout/theme.liquid')
  end
end

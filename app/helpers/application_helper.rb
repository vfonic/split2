module ApplicationHelper
  CONTROLLER_ACTION_TO_ASSET_KEY_MAPPING = {
    'pages#show' => 'templates/page%{template_suffix}.liquid'
  }

  def theme
    @theme ||= ActiveTheme.first.theme
  end

  def theme_dir
    @theme_dir ||= "themes/#{theme.id}"
  end

  def controller_action_to_asset_key(record)
    template_suffix = record.try(:template_suffix)

    controller_action = "#{controller_name}##{action_name}"
    template_format = CONTROLLER_ACTION_TO_ASSET_KEY_MAPPING[controller_action]

    template_path = template_format % (
      template_suffix.present? ?
        { template_suffix: ".#{template_suffix}" } :
        { template_suffix: '' }
    )

    template_path
  end

  # def theme_assets
  #   @theme_assets ||= theme.assets
  # end

  # def asset_url_for_key(key)
  #   url = theme_assets.where(key: key).first
  #   return url if url.present?
  #   url = theme_assets.where(key: key.gsub(/css$/, 'liquid')).first
  #   return url if url.present?
  # end

  # def layout_theme_asset
  #   @layout_theme_asset ||= asset_url_for_key('layout/theme.liquid')
  # end
end

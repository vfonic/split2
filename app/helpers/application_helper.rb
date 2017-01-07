module ApplicationHelper
  CONTROLLER_ACTION_TO_LIQUID_MAPPING = {
    'pages#show' => 'templates/page%{template_suffix}.liquid'
  }

  def theme
    @theme ||= ActiveTheme.first.theme
  end

  def theme_dir
    @theme_dir ||= "themes/#{theme.id}"
  end

  def controller_action_to_liquid_file_path(record)
    # TODO: fallback to default template when template_suffix template missing
    template_suffix = record.try(:template_suffix)

    controller_action = "#{controller_name}##{action_name}"
    template_format = CONTROLLER_ACTION_TO_LIQUID_MAPPING[controller_action]

    template_path = template_format % (
      template_suffix.present? ?
        { template_suffix: ".#{template_suffix}" } :
        { template_suffix: '' }
    )

    template_path
  end
end

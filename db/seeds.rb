theme = ThemeMechanic.setup(
  name: 'Simple',
  path: Rails.root.join('app', 'views', 'layouts', 'skeleton-theme')
)
ActiveTheme.create!(theme: theme)

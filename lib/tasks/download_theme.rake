namespace :themes do
  desc 'Download active theme from AWS'
  task download_theme: :environment do
    assets = Asset.where(theme_id: ActiveTheme.first.theme_id)
    assets.each do |asset|
      local_asset_path = Rails.root.join(
        'app', 'views', 'themes', asset.theme_id.to_s, asset.key
      )
      FileUtils.mkdir_p(File.dirname(local_asset_path))
      File.open(local_asset_path, 'wb') do |f|
        f.write(asset.file.read)
      end
    end
  end
end

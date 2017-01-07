class ThemeMechanic
  def self.setup(name:, path:)
    theme = Theme.new(name: name)

    files = Dir.glob("#{path}/**/*")
    instantiate_assets_from_files(files, theme)

    theme.save!
    theme
  end

  def instantiate_assets_from_files(files, theme)
    files.each do |file|
      next if Dir.exist?(file)
      asset = Asset.new
      File.open(file) do |f|
        asset.file = f
      end
      asset.key = Pathname.new(file).relative_path_from(path).to_s
      theme.assets << asset
    end
  end
end

class ThemeMechanic
  def self.setup(name:, path:)
    theme = Theme.new(name: name)

    files = Dir.glob("#{path}/**/*")
    files.each do |file|
      next if Dir.exists?(file)
      asset = Asset.new
      File.open(file) do |f|
        asset.file = f
      end
      asset.key = Pathname.new(file).relative_path_from(path).to_s
      theme.assets << asset
    end

    theme.save!
    theme
  end
end

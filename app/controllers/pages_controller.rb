class PagesController < LiquidController
  before_action :find_page

  def show
    render "#{theme_dir}/#{controller_action_to_asset_key(@page)}"
  end

  def liquid_assigns
    super.deep_merge({ 'page' => @page })
  end

  private
  def find_page
    @page = Page.find_by(handle: params[:handle])
  end
end

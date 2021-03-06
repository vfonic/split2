class PagesController < LiquidController
  before_action :find_page

  def show
    render controller_action_to_liquid_file_path(@page)
  end

  def liquid_assigns
    # merge example:
    # { nested: { one: 1 } }.merge({ nested: { two: 2 } })
    # => { nested: { two: 2 } }
    # deep_merge example:
    # { nested: { one: 1 } }.merge({ nested: { two: 2 } })
    # => { nested: { one: 1, two: 2 } }
    super.merge('page' => @page)
  end

  private

  def find_page
    @page = Page.find_by(handle: params[:handle])
  end
end

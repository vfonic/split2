# == Schema Information
#
# Table name: pages
#
#  id              :integer          not null, primary key
#  author          :string
#  title           :string
#  handle          :string
#  body_html       :text
#  published_at    :datetime
#  template_suffix :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_pages_on_handle  (handle)
#

class Page < ActiveRecord::Base
  def url
    "/pages/#{handle}"
  end
end

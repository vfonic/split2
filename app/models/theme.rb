# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theme < ActiveRecord::Base
  has_one :active_theme, dependent: :restrict_with_error

  def role
    active_theme ? 'main' : 'unpublished'
  end
end

# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theme < ActiveRecord::Base
  has_one :active_theme, dependent: :restrict_with_error
end

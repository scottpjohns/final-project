# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  story_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theme < ApplicationRecord
end

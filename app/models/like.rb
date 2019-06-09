# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  story_id   :integer
#  fan_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
    belongs_to(:fan, { :class_name => "User" })
    belongs_to(:story)
end

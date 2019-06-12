# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  text         :string
#  commenter_id :integer
#  story_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ApplicationRecord
    belongs_to(:author_id, { :class_name => "User" })

  def commenter_name
    a = Comment.where({ :id => self.id}).pluck(:commenter_id)
    return User.where({ :id => a}).at(0).username
  end
end

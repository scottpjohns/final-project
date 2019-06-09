# == Schema Information
#
# Table name: stories
#
#  id             :integer          not null, primary key
#  name           :string
#  comments_count :integer
#  author_id      :integer
#  theme_id       :integer
#  file_url       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Story < ApplicationRecord
  belongs_to(:owner, { :class_name => "User", :foreign_key => "author_id" })

  has_many(:comments)

  has_many(:likes)

  has_many(:fans, { :through => :likes })
end

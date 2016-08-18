# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  cook_time   :string           not null
#  prep_time   :string           not null
#  ingredient  :text             not null
#  instruction :text             not null
#  image_url   :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recipe < ApplicationRecord
  validates :name, :cook_time, :prep_time, :ingredient, :image_url, presence: true
end
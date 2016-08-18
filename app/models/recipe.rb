# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  cook_time   :string
#  prep_time   :string
#  ingredient  :text
#  instruction :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recipe < ApplicationRecord
end

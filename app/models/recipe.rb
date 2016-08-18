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
  after_commit :flush_cache
  validates :name, :description, :cook_time, :prep_time, :ingredient, :instruction, :image_url, presence: true

  class << self
    def all_cached
      Rails.cache.fetch("recipes") { Recipe.all }
    end
  end

  private

  def flush_cache
    Rails.cache.delete('recipes')
  end
end
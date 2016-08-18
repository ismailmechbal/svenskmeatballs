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
#  image_url   :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  user_id     :integer
#
# Indexes
#
#  index_recipes_on_slug     (slug) UNIQUE
#  index_recipes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_9606fce865  (user_id => users.id)
#

class Recipe < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  after_commit :flush_cache
  belongs_to :user
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

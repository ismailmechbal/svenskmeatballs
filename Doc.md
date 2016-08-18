http://http.tv4.se/
# Documentation

Recept
  name
  description:text
  cook_time
  prep_time
  ingredient:text
  instruction:text

  Category


User
  can be a cook
  can add recept
  can vote recept


##Features
###Caching
https://github.com/redis-store/redis-rails
gem 'actionpack-page_caching', '~> 1.0.2'
https://www.sitepoint.com/speed-things-up-by-learning-about-caching-in-rails/

###Search
gem 'ransack'

###Crawling


###SEO
https://github.com/lassebunk/dynamic_sitemaps
https://schema.org/recipeIngredient

###Community
gem 'acts_as_votable', '~> 0.10.0'
https://github.com/chaps-io/public_activity
https://www.sitepoint.com/super-easy-activity-feeds-with-stream/


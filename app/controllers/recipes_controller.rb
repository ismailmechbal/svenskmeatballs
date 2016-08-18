class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    #@recipes = Recipe.all.order(created_at: :desc)
    @recipes = Recipe.all_cached
  end

  def show
  end

  def new
    #@recipe = current_user.recipes.build
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    #@recipe = current_user.recipes.build(recipe_params)
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = "Your recipe has been created!"
      redirect_to @recipe
    else
      flash[:alert] = "Your recipe couldn't be created! Please check the form."
      render :new
    end
  end

  def update
    if @recipe.update(recipe_params)
      flash[:success] = "Your recipe has been updated!"
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    flash[:success] = "Your recipe has been deleted!"
    redirect_to recipes_url
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
    expire_fragment(@recipe)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient, :description, :cook_time, :prep_time, :instruction, :image_url)
  end

end
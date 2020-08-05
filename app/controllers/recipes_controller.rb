class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_name: '1')
    @recipe.ingredients.build(ingredient_name: '2')
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end
end

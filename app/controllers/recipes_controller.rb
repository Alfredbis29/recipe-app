class RecipesController < ActionController::Base
  def index
    @recipe = Recipe.all
  end

  def show; end

  
  # def create
  #   @recipe = Recipe.new(recipe_params)
  
  #   respond_to do |format|
  #     if @recipe.save
  #       format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully created.' }
  #       format.json { render :show, status: :created, location: @recipe }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @recipe.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  
  # def update
  #   respond_to do |format|
  #     if @recipe.update(recipe_params)
  #       format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @recipe }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @recipe.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def new
    @recipe = Recipe.new
  end
  def create
   

    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
  
    if @recipe.save
      redirect_to recipes_path, flash: { alert: 'Your Recipe has been saved' }
    else
      redirect_to new_recipe_path, flash: { alert: 'Could not save your recipe' }
    end
  end

  private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end


    def recipe_params
      params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :user_id)
    end

end

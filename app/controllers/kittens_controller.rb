class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to kittens_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end

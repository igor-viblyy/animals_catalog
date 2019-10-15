# frozen_string_literal: true

# class Animal
class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create!(animal_params)

    if @animal.errors.empty?
      redirect_to :animals
    else
      render :new, errors: @animal.errors
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :avatar)
  end
end

module Api
  module V1
    class CocktailsController < ApplicationController
      # before_action :authenticate!, only: [:create]

      def index
        render json: Cocktail.all
      end

      def create
        @cocktail = Cocktail.new(cocktail_params)
        if @cocktail.save
          render json: @cocktail, status: :created
        else
          render json: { errors: @cocktail.errors.full_messages }
        end
      end

      def show
        cocktail = Cocktail.find(params[:id])

        cocktail_json = {
          id: cocktail.id,
          name: cocktail.name,
          description: cocktail.description,
          instructions: cocktail.instructions,
          source: cocktail.source,
          proportions: cocktail.proportions.map do |prop|
            {
              id: prop.id,
              ingredient_name: prop.ingredient.name,
              amount: prop.amount
            }
          end
        }

        render json: cocktail_json
      end

      # def create
      #   byebug
      # end

      def edit

      end

      def update

      end

      def destroy

      end

      private
      def cocktail_params
        params.require(:cocktail).permit(:name, :description, :instructions, :source)
      end
    end
  end
end

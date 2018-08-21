class Api::V1::ToysController < ApplicationController
  before_action :find_toy, only: [:update]
   def index
     @toys = Note.all
     render json: @toys
   end

   def update
     @toy.update(toy_params)
     if @toy.save
       render json: @toy, status: :accepted
     else
       render json: { errors: @toy.errors.full_messages }, status: :unprocessible_entity
     end
   end

   private

   def toy_params
     params.permit(:name, :age, :tag)
   end

   def find_toy
     @toy = Note.find(params[:id])
   end

 end





end

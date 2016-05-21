module Api
  module V1
    class PersonController < ApplicationController

      def index

        @persons = Person.all
        render json: {message: 'Resource not found'}

      end

    end
  end
end


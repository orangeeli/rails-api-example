module Api
  module V1
    class PersonController < ApplicationController

      def index

        @people = Person.all

        respond_to do |format|
          format.json
        end

      end

    end
  end
end


module Api
  module V1
    class PersonController < ApplicationController

      def index

        @persons = Person.all

      end

    end
  end
end


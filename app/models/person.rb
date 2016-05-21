class Person

  include Mongoid::Document

  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String

  embeds_many :addresses do
    def find_by_country(country)
      where(country: country).first
    end
    def chinese
      @target.select { |address| address.country == "China" }
    end
  end

end
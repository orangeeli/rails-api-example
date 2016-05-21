class Address

  include Mongoid::Document

  field :street
  field :city
  field :country

end
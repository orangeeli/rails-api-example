class Person

  include Mongoid::Document

  field :first_name
  field :middle_name
  field :last_name

  embeds_many :addresses

end
person ||= person

json.id person['id']
json.name person['first_name']
json.last_name person['last_name']

json.addresses person.addresses.each do |address|
  json.street address['street']
  json.city address['city']
  json.country address['country']
end

# if person.class == Hash
#   json.active
#   Person.find(person['id']).active_for_user?(@api_key.user)
# else
#   json.active person.active_for_user?(@api_key.user)
# end

# if person.class == ActiveRecord::Base && !person.persisted? &&
#     !person.valid?
#   json.errors person.errors.messages
# end
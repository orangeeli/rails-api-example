person ||= person

json.id person['id']
json.name person['first_name']
json.last_name person['last_name']
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
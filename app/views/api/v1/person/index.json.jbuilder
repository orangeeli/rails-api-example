# https://github.com/rails/jbuilder/issues/5 because 1.8.7 is not dead yet
json.people @people.each do |json, person|
  json.partial! 'api/v1/person/show', :person => person
end

json.total_count @people.respond_to?(:total_entries) ? @people.total_entries : @people.to_a.count
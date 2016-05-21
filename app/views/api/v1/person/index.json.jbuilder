json.people @persons, partial: 'api/v1/person/show', as: :person
json.total_count @persons.respond_to?(:total_entries) ? @persons.total_entries : @persons.to_a.count
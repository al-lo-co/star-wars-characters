namespace :upload_data do
  desc "TODO"
  task upload_characters: :environment do
    file = File.read('./swapi_people.json')
    data_hash = JSON.parse(file)
    data_hash.each{|character| Character.create(character)}
  end

  task upload_films: :environment do
    file = File.read('./swapi_films.json')
    data_hash = JSON.parse(file)
    data_hash.each{|film| Film.create(producer: film['producer'], title: film['title'], episode: film['episode'], director: film['director'],release_date: film['release_date'], character_ids: film['characters'])}
  end

end

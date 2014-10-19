json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :description, :done, :priority
  json.url todo_url(todo, format: :json)
end

json.array!(@questions) do |question|
  json.extract! question, :id, :subject, :body, :author
  json.url question_url(question, format: :json)
end

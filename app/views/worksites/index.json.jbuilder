json.array!(@worksites) do |worksite|
  json.extract! worksite, :id, :name, :location, :start_date, :end_date, :budget
  json.url worksite_url(worksite, format: :json)
end

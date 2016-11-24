json.extract! @diary, :id, :description
json.tasks @tasks do |task|
  json.title task.title
  json.description task.description
end

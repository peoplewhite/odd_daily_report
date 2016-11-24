#json.extract! @tasks, :title, :description

json.all_tasks @tasks do |task|
  json.title task.title
  json.content task.description
end

#json.extract! @tasks, :title, :description

json.custom_tasks @tasks do |task|
  json.custom_title task.title
  json.custom_content task.description
end

module ApplicationHelper
  def image_placeholder(args)
    width = args[:width] || '300'
    height = args[:height] || '300'
    text = args[:text] || "#{width} x #{height}"
    classes = args[:class] || ""

    image_tag "http://placehold.it/#{width}x#{height}&text=#{text}", :class => "#{classes}"
  end

  def render_check_task_btn(task)
    if task.done?
      link_to 'check', check_task_path(task), method: :put, class: 'btn btn-primary'
    else
      link_to 'uncheck', check_task_path(task), method: :put, class: 'btn btn-primary'
    end
  end
end

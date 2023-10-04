module ApplicationHelper
  def deadline_badge_class(task)
    if task.deadline > Time.now
      'badge text-bg-info'
    else
      'badge text-bg-danger'
    end
  end
end

class List < ActiveRecord::Base

  has_many :tasks

  def complete_all_tasks!
    tasks.each do |task|
      task.update_all(complete: true)
    end
  end

  def snooze_all_tasks!
    tasks.each do |task|
      task.snooze_hour!
    end
  end

  def total_duration
    tasks.sum(:duration)
  end

  def incomplete_tasks
    array_of_tasks = []
    tasks.each do |task|
      if !task.complete
        array_of_tasks << task
      end
    end
    return array_of_tasks
  end

  def favorite_tasks
    array_of_tasks = []
    tasks.each do |task|
      if task.favorite
        array_of_tasks << task
      end
    end
    return array_of_tasks
  end


end

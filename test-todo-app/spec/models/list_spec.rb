require 'rails_helper'

RSpec.describe List, type: :model do
  
  describe '#complete_all_tasks!' do
    it 'should mark all tasks as complete' do
      list = List.create(name: "groceries")
      ["oranges", "apples"].each do |task_name|
        Task.create(name: task_name, complete: false, list_id: list.id)
        end
      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks' do
    it 'should increase all task deadlines by 1 hour' do
      list = List.create(name: "deadlines")
      [Time.new(2015, 1, 1), Time.new(2015, 1, 2)].each do |deadline|
        later = deadline + 1.hour
        Task.create(deadline: deadline)
      end
      list.snooze_all_tasks!
      list.tasks.each do |task|
        expect(task.deadline).to eq(later)
      end
    end
  end

  describe '#total_duration' do
    it 'should increment the total by task duration' do
      list = List.create(name: "total durations")
      total = 0
      [1, 5, 8, 3].each do |duration|
        Task.create(duration: total)
        total = total + duration
      end
      list.total_duration
      list.tasks.each do |task|
        expect(task.total_duration).to eq(total)
      end
    end
  end

  describe '#incomplete_tasks' do
    it 'should add incomplete tasks to array_of_tasks' do
      list = List.create(name: "incomplete tasks")
      incomplete = []
      ["chores", "gardening", "laundry"].each do |incomplete_task|
        incomplete << Task.create(name: incomplete_task)
      end
      list.incomplete_tasks
      list.tasks.each do |task|
        expect(task.incomplete_tasks).to eq(incomplete)
      end
    end
  end

  describe '#favorite_tasks' do
    it 'should add favorite tasks to array_of_tasks' do
      list = List.create(name: "favorite tasks")
      favorite = []
      ["flying", "jumping", "not running", "skiing"].each do |favorite_task|
        favorite << Task.create(name: favorite_task)
      end
      list.favorite_tasks
      list.tasks.each do |task|
        expect(task.favorite_tasks).to eq(favorite)
      end
    end
  end
end

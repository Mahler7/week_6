require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do
    it 'should make a task complete that is incomplete' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end

  describe '#toggle_favorite!' do
    it 'should turn favorite to true' do
      task = Task.create(complete: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end
  end

  describe '#overdue?' do
    it 'should return that the time is greater than the current time' do
      task = Task.create(deadline: Time.now)
      task.overdue?
      expect(task.overdue?).to eq(true)
    end
  end

  describe '#increment_priority!' do
    it 'should update priority by 1' do
      task = Task.create(priority: 5)
      task.increment_priority!
      expect(task.priority).to eq(6)
    end
  end

  describe '#decrement_priority!' do
    it 'should update priority by -1' do
      task = Task.create(priority: 6)
      task.decrement_priority!
      expect(task.priority).to eq(5)
    end
  end

  describe '#snooze_hour!' do
    it 'should update deadline by 1 hour' do
      task = Task.create(deadline: Time.new(2015, 1, 1))
      new_time = Time.new(2015,1,1) + 1.hour 
      task.snooze_hour!
      expect(task.deadline).to eq(new_time)
    end
  end
end

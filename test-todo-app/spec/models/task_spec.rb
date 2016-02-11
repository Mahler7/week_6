require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do
    it 'should make a task complete that is incomplete' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end

    it 'should make a task incomplete that is complete' do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
  end

  describe '#toggle_favorite!' do
    it 'should turn favorite to true' do
      task = Task.create(favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end

    it 'should turn favorite to false' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end
  end

  describe '#overdue?' do
    it 'should return that the time is greater than the current time' do
      task = Task.create(deadline: Time.now)
      expect(task.overdue?).to eq(true)
    end

    it 'should return that the time is less than the current time' do
      task = Task.create(deadline: 1.day.from_now)
      expect(task.overdue?).to eq(false)
    end
  end

  describe '#increment_priority!' do
    context 'when priority is not 10' do
      it 'should increment priority by 1' do
        task = Task.create(priority: 5)
        task.increment_priority!
        expect(task.priority).to eq(6)
      end
    end

    context 'when priority is not 10' do
      it 'should not increment priority by 1' do
        task = Task.create(priority: 10)
        task.increment_priority!
        expect(task.priority).to eq(10)
      end
    end
  end

  describe '#decrement_priority!' do
    context 'when priority is not 10' do
      it 'should decrement priority by 1' do
        task = Task.create(priority: 5)
        task.decrement_priority!
        expect(task.priority).to eq(4)
      end
    end

    context 'when priority is not 1' do
      it 'should not decrement priority by 1' do
        task = Task.create(priority: 1)
        task.decrement_priority!
        expect(task.priority).to eq(1)
      end
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

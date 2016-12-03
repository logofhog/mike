require 'rails_helper'

describe Course, type: :model do
  it 'can make a course' do
    course = Course.new
    expect(course).to be_a(Course)
  end

  it 'has many users' do
    user1 = User.new
    user2 = User.new
    course = Course.new( users: [user1, user2] )
    expect(course.users.length).to eq(2)
  end

  it 'has a tournament' do
    tournament = Tournament.new
    course = Course.new
    course.tournaments << tournament
    expect(course.tournaments).to eq([tournament])
  end
end

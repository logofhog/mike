require 'rails_helper'

describe User, type: :model do
  it 'can make a user' do
    new_user = User.new
    expect(new_user).to be_a(User)
  end

  it 'can have a handicap' do
    new_user = User.new( { handicap: 2 } )
    expect(new_user.handicap).to eq(2)
  end

  it 'has a home course' do
    course = Course.new
    user = User.new( { home_course: course } )
    expect(user.home_course).to eq(course)
  end
end

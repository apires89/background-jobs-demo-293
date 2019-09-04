class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    puts 'Starting Clearbit API for #{user.email}'
    # call for API Processing
    #update profile with API info
    sleep 2
    puts 'Done! New profile for #{user.email}'
  end


  def call

  end

  def update_user_profile

  end
end

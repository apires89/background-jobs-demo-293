namespace :user do
  desc "Enrinching a given user with Clearbit API"
  task :update, [:user_id] => :environment do |t,args|
    user = User.find(args[:user_id])
    puts "Enricnhing #{user.email}"
    UpdateUserJob.perform_now(user.id)
  end
end

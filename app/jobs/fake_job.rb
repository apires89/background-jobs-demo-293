class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "Im working on a fake job"
    sleep 3
    puts "OK im done faking it"
    # Do something later
  end
end

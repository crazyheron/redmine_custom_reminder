require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

#scheduler.cron('00 10 * * *') do
scheduler.every '2m' do
  puts 'Scheduler started'
  CustomRemindersEmailNotificationJob.perform_now
  puts 'Scheduler complete'
end

scheduler.join

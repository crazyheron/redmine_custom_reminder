every 1.minutes do
  require File.expand_path('app/jobs/application_job', Whenever.path)
  require File.expand_path('plugins/redmine_custom_reminder/app/jobs/schedule_email_notification_job', Whenever.path)
  runner 'ScheduleEmailNotificationJob.perform_now'
end

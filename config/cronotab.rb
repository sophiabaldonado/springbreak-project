# cronotab.rb — Crono configuration file
#
# Here you can specify periodic jobs and schedule.
# You can use ActiveJob's jobs from `app/jobs/`
# You can use any class. The only requirement is that
# class should have a method `perform` without arguments.
#
# class TestJob
#   def perform
#     puts 'Test!'
#   end
# end
#
# Crono.perform(TestJob).every 2.days, at: '15:30'
#
Crono.perform(GetTweetsJob).every 25.minutes
Crono.perform(GetMorningTweetsJob).every 11.minutes
Crono.perform(GetNightTweetsJob).every 15.minutes
Crono.perform(GetWeatherTweetsJob).every 10.minutes
Crono.perform(GetTimeTweetsJob).every 10.minutes
Crono.perform(GetBreakfastTweetsJob).every 7.minutes
Crono.perform(GetLunchTweetsJob).every 15.minutes
Crono.perform(GetDinnerTweetsJob).every 12.minutes
Crono.perform(GetSleepTweetsJob).every 11.minutes
Crono.perform(GetWakeTweetsJob).every 15.minutes
Crono.perform(GetWorkTweetsJob).every 9.minutes
Crono.perform(GetSchoolTweetsJob).every 15.minutes

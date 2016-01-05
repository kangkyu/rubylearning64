def decimal_years_old(seconds_old)
  year_in_seconds = 365 * 24 * 60 * 60
  seconds_old.to_f / year_in_seconds
end

p format "%.2f", decimal_years_old(979000000)

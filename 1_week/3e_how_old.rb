def decimal_years_old(seconds_old)
  year_in_seconds = 365 * 24 * 60 * 60
  format "%.2f", seconds_old.to_f / year_in_seconds
end
seconds_old = 979000000

p decimal_years_old(seconds_old)

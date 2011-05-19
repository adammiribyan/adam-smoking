module ApplicationHelper
  require 'date'
  
  def pluralize(count, singular, plural = nil)
    "#{count || 0} " + ((count == 1 || count =~ /^1(\.0+)?$/) ? singular : (plural || singular.pluralize))
  end
  
  def days_count_to_now(year, month, mday)
    (Time.now().to_date - Date.new(year, month, mday)).to_i unless year.nil?
  end
end
require 'activesupport'
module Abaco 

  def self.calculate_time(time)
    result = ""
    difference = Time::now - time
    seconds    =  difference % 60
    difference = (difference - seconds) / 60
    minutes    =  difference % 60
    difference = (difference - minutes) / 60
    hours      =  difference % 24
    difference = (difference - hours)   / 24
    days       =  difference % 7
    weeks      = (difference - days)    /  7

    if days == 0 && hours == 0 && weeks == 0
      if minutes == 0
          result = "#{seconds.to_i} seconds ago"
      else
        if minutes > 1
          result = "#{minutes.to_i} minutes ago"
        else
          result = "#{minutes.to_i} minute ago"
        end
      end
    elsif weeks == 0
      if days == 0
        if hours > 1
          result = "#{hours.to_i} hours ago"
        else
          result = "#{hours.to_i} hour ago"
        end
      else
        if days > 1
          result = "#{days.to_i} days ago"
        else
          result = "yesterday"
        end
      end
    else
      if weeks > 1
        result = "#{weeks.to_i} weeks ago"
      else
        result = "#{weeks.to_i} week ago"
      end
    end
    result
  end
end


require 'date'

class User
  attr_reader :name

  def initialize(name, day, month)
    @name = name
    @day = day.to_i
    @month = month.to_i
  end

  def birthday
    bday_current_year = Date.new(today.year, @month, @day)
    if bday_current_year < today
      Date.new(today.year + 1, @month, @day)
    else
      bday_current_year
    end
  end

  def days_until_bday
    (birthday - today).to_i
  end

  def today
    Date.today
  end

end

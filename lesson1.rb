require 'date'
class Lesson1
  def sum(val = 0)
    array = val.to_s.split('').map(&:to_i)
    array.inject(0, :+)
  end

  def age(birthday)
    if birthday
      birthday = Date.parse(birthday)
      now = Time.now.to_date
      age = now.year - birthday.year
      age_day = now - birthday
      "Я живу #{age} года или #{age_day} дней или #{age_day * 24} часов или
      #{age_day * 1440} минут или #{age_day * 1440 * 60} секунд"
    else
      'Invalid Date Format'
    end
  end

  def name
    name = gets
    second_name = gets
    last_name = gets
    "Hello #{name} #{second_name} #{last_name}!"
  end
end

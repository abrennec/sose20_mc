
# method example that uses "case" statements

# mon -> Monday
# tue -> Tuesday
# wed -> Wednesday


def get_week_day_name(day)
    day_name = ""

    case day
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thur"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    else
        day_name = "invalid"
    end

    return day_name
end


puts get_week_day_name("mon")
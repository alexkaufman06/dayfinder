class String
  define_method(:dayfinder) do
    days = {0=>"Sunday", 1=>"Monday", 2=>"Tuesday", 3=>"Wednesday", 4=>"Thursday",
            5=>"Friday", 6=>"Saturday"}
    date_array = self.split("/")
    day = date_array[1].to_i()
    month = date_array[0].to_i()
    year = date_array[2].to_i()
    days.fetch(Time.new(year, month, day).wday())
  end
end

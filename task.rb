require "date"

class Task < Post

    def initialize
        super

        due_date = Time.now
    end

    def read_from_console
        puts "Что надо делать?"
        @text = STDIN.gets.chomp
        
        puts "К какому числу? Укажите дату"
        input = STDIN.gets.chomp

        @due_date = Date.parse(input)

    end

    def to_strings
      time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n\r \n\r"

      deadline = "Крайний срокЖ: #{@due_date}"

      return [time_string, deadline, @text]
    end

end
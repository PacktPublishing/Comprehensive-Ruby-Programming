def error_logger (e)
  File.open('error-handling-lessons/error_log.txt', 'a') do |file|
    file.puts e
  end
end 
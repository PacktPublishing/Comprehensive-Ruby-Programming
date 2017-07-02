class Author
  define_method("some_method") do
    puts "Some details"
  end
end

author = Author.new
author.some_method

class Author
  genres = %w(fiction coding history)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.fiction_details "Ayn Rand"
author.coding_details "Cal Newport"
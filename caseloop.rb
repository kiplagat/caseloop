movies = {
    hitman: 1,
    race: 3,
    assasin: 2
    }
puts "Type what you want to do"
choice = gets.chomp
case choice
when "add"
p "Enter movie title"
title=gets.chomp
p "Enter the ratings"
rating=gets.chomp
if movies[title].nil?
movies={ title: rating }
p "#{title} of #{rating} was added"
p movies
else
    p "already existing"
end
when "update"
p "Enter the title to check the title if it exists"
title=gets.chomp
if movies[title].nil?
    p "movie is not in the array"
else 
    p "now kwy in the rating"
    rating=gets.chomp
    movies={title: rating}
    
end
when "display"
movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
p "Enter the tile to delete"
title = gets.chomp
if movies[title].nil?
    p "no movie to delete"
else
    movies.delete(title)
end

else 
puts "Error!"
end


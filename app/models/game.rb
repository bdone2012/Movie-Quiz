class Game < ActiveRecord::Base


end

#  base_url = "http://www.omdbapi.com/?t="
#     path_correct = base_url + @correct_answer.saved_answer.gsub!(" ", "+")
#     path_incorrect1 = base_url + @incorrect_answer1.saved_answer.gsub!(" ", "+")
#     path_incorrect2 = base_url + @incorrect_answer2.saved_answer.gsub!(" ", "+")

#     @correct_response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{path_correct}")
#     @incorrect_response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{path_incorrect1}")
#     @incorrect_responses = HTTParty.get("http://www.omdbapi.com/?i=&t=#{path_incorrect2}")

#     session[:correct_answer_id] = @correct_answer.id

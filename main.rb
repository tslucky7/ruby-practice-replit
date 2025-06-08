# split

# sentence = "I am an english sentence."
# words = sentence.split(" ")
# puts words

#include?

# string = "I am a teacher"
# puts string.include?("teacher")

# gsub
# name = "Mr. John"
# puts name.gsub("J", "D")
# puts name

# gsub!
# name = "Mr. John"
# puts name.gsub!("J", "D")
# puts name

# #length
# name = "qqqqqqqqqq,,dldll,dldldldldldldllddl"
# puts name.length

# Integer

# to_s
# puts 2.to_s

#to_i
# puts "2".to_i

# even?, odd?
# puts 2.even?
# puts 3.even?

# names = ["John", "Smith", "Sarah"]
# puts names.join("_")

# scores = [10, 20, 30]
# puts scores.sum

# puts scores.sample

# puts [1,3,5,55,555, 2].sort

# puts [[1,2,3], [4,5,6]].flatten

# array = [1,2,3,4,5,6,7,8,9,10]
# puts array.select { |e| e % 3 == 0}

# scores = {math: 10, english: 20, science: 30}
# puts scores.fetch(:math)

# puts scores.keys
# puts scores.to_a

# puts scores.delete(:math)
# puts scores
# puts scores.merge({music: 40})
# puts scores

# array1 = [1,2,3]
# array2 = array1.map do |e|
#   e + 1
# end
# puts array2

# scores = {math: 10, english: 20, science: 30}
# score_list = scores.map do |subject, score|
#   "#{subject} #{score}点"
# end

# puts score_list

# array1 = [1,2,3]
# array2 = array1.map { |e| e + 1 }

# 例外

# puts "aaa"
# raise StandardError
# puts "bbb"

# begin
#   raise StandardError
# rescue => e
#   puts "エラーが発生しました"
# end

# require_relative './name'

# names = ["John", "Smith"]
# puts_name(names)

# m = "デイトラ".match(/デイトラ/)
# puts m

require 'uri'
require 'net/http'
require 'json'

url = "https://qiita.com/api/v2/items?query=Ruby"

uri = URI.parse(url)
res = Net::HTTP.get(uri)
res = JSON.parse(res)

res.each do |item|
  puts "#{item["title"]} by #{item["user"]["name"]}"
end
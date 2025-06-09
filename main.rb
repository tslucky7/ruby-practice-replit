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

# require 'uri'
# require 'net/http'
# require 'json'

# url = "https://qiita.com/api/v2/items?query=Ruby"

# uri = URI.parse(url)
# res = Net::HTTP.get(uri)
# res = JSON.parse(res)

# res.each do |item|
#   puts "#{item["title"]} by #{item["user"]["name"]}"
# end

# require_relative './qiita'

# qiita = Qiita.new('Ruby')
# articles = qiita.search()
# puts articles

numbers = [1, 2, 3, 5]

# 出力値
# 11
puts numbers.sum

numbers = [8, 2, 2]

# 出力値
# 32
puts numbers.inject(:*)


numbers = [8, 2, 5, 20]
# 出力値
# 1600

  total = 1
numbers.each do |number|
  total = total * number
end

puts total

scores = [
  [10, 11, 22],
  [29, 11, 3, 1]
]

# 出力値
# 14
# 11
scores.each do |score_list|
  total = 0
  score_list.each do |score|
    total += score
  end
  average = total / score_list.length
  puts average
end

def max_and_min(array)
  return array.max, array.min
end
puts max_and_min([1, 2, 345, 346, 299]).inspect

# 出力値
# [346, 1]

def compare_str(str)
  if str[0] == str[1]
    puts "TRUE"
  else
    puts "FALSE"
  end
end

str = ['aaa', 'bbb']
compare_str(str) # 出力値 FALSE

str = ['aaa', 'aaa']
compare_str(str) # 出力値 TRUE

def question_str(str)
  if str.include?("?")
    puts "疑問文"
  end
end

str = 'こんにちは'
question_str(str)
puts "----------"
str = 'こんにちは?'
question_str(str)
# 出力値
# ----------
# 疑問文


def puts_email(str)
  if str.match(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
    puts str
  else
    puts 'メールアドレスではありません'
  end
end
  
str = 'aaa@gmail.com'
puts_email(str) # 出力される
str = 'aaagmail.com'
puts_email(str) # 出力されない

names = [
  { first_name: 'taro', family_name: 'sato' },
  { first_name: 'rika', family_name: 'yamada' }
]
# 出力値 sato taro, yamada rika

full_names = names.map do |name|
 "#{name[:family_name]} #{name[:first_name]}"
end

puts full_names.join(",")

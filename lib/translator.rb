# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  binding.pry
  emoticons.each do |emotion, array_of_emoticons|
    emoticons[emotion] =
    {:english => array_of_emoticons[0],
    :japanese => array_of_emoticons[1]}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

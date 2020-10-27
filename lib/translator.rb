# require modules here
require "yaml"
require "pry"

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons.each do |emotion, array_of_emoticons|
    emoticons[emotion] =
    {:english => array_of_emoticons[0],
    :japanese => array_of_emoticons[1]}
  end
end

def get_japanese_emoticon (file, emoticon)
  file = load_library(file)
  file.each do |emotion, hash_of_languages|
    if emoticon == hash_of_languages[:english]
      file[hash_of_languages][:japanese]
    end
  end
end

def get_english_meaning
  # code goes here
end

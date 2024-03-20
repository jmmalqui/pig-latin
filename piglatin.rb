# For words that begin with consonant sounds, all letters after the initial vowel are placed at the beginning of the word sequence. Then, "ay" is added, as in the following examples:[12]

#     "pig" = "igpay"
#     "latin" = "atinlay"
#     "banana" = "ananabay"

# When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing.[13]

#     "friends" = "iendsfray"
#     "smile" = "ilesmay"
#     "string" = "ingstray"

# For words that begin with vowel sounds, one just adds "hay", "way", "nay" or "yay" to the end. Examples are:

#     "eat" = "eatway"
#     "omelet" = "omeletway"
#     "are" = "areway"

# An alternative convention for words beginning with vowel sounds, one removes the initial vowel(s) along with the first consonant or consonant cluster. This usually only works for words with more than one syllable and offers a more unique variant of the words in keeping with the mysterious, unrecognizable sounds of the converted words. Examples are:

#     "every" = "eryevay"
#     "omelet" = "eletomay"
#     "another" = "otheranay"

# Sentence structure remains the same as it would in English. Pronunciation of some words may be a little difficult for beginners, but people can easily understand Pig Latin with practice.

def piggify(str)
  vowels = "aiueo"
  s = ""
  if vowels.include?(str[0].downcase)
    s = "#{str}#{%w[nay yay hay way].sample}"
  else
    idx = 0
    str.downcase.chars.each do |char|
      if vowels.include?(char)
        break
      end
      idx += 1
    end
    s = "#{str[idx..-1]}#{str[..idx - 1]}ay"
  end
  s
end

def english_to_pig(text)
  words = text.split.map(&->(word){piggify(word)})
  words.join(" ")
end

pigged = english_to_pig "pigs love pancakes and apples"
puts pigged

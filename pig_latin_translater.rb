# Here is the prompt:

# We are bringing on a new group of customers and are in need of a Pig Latin translation engine for the product. You can find out more about Pig Latin here. Our translator needs to be able to take in a string of one or more English words and produce a properly formatted Pig Latin translation. You may choose to implement the solution in the language of your choice, but ruby or javascript is preferred.

# Here are some specific example translations to use in testing:
# hello => ellohay
# eat => eatway
# yellow => yellowway
# eat world => eatway orldway
# Hello => Ellohay
# Apples => Applesway
# eat… world?! => eatway… orldway?!
# school => oolschay
# quick => ickquay
# she’s great! => e’sshay eatgray!
# HELLO => ELLOHAY
# Hello There => Ellohay Erethay


require 'minitest/autorun'
require 'pry'
require 'pry-nav'

# MiniTest Running:

# Finished in 0.001006s, 11928.4325 runs/s, 11928.4325 assertions/s.
# 12 runs, 12 assertions, 0 failures, 0 errors, 0 skips

class TestPigLatinTranslater < Minitest::Test
  def test_pig_latin_returns_an_answer
    pig_latin = PigLatinTranslater.new('Hi')
    assert !pig_latin.call.nil?
  end

  def test_pig_latin_returns_ellohay
    pig_latin = PigLatinTranslater.new('hello')
    assert pig_latin.call == 'ellohay'
  end

  def test_pig_latin_returns_eatway
    pig_latin = PigLatinTranslater.new('eat')
    assert pig_latin.call == 'eatway'
  end

  def test_pig_latin_returns_yellowway
    pig_latin = PigLatinTranslater.new('yellow')
    assert pig_latin.call == 'yellowway'
  end

  def test_pig_latin_returns_ELLOHAY
    pig_latin = PigLatinTranslater.new('HELLO')
    assert pig_latin.call == 'ELLOHAY'
  end

  def test_pig_latin_returns_Ellohay
    pig_latin = PigLatinTranslater.new('Hello')
    assert pig_latin.call == 'Ellohay'
  end

  def test_pig_latin_returns_Applesway
    pig_latin = PigLatinTranslater.new('Apples')
    assert pig_latin.call == 'Applesway'
  end

  def test_pig_latin_returns_orldway
    pig_latin = PigLatinTranslater.new('eat world')
    assert pig_latin.call == 'eatway orldway'
  end

  def test_pig_latin_returns_orldway2
    pig_latin = PigLatinTranslater.new('eat… world?!')

    assert pig_latin.call == 'eatway… orldway?!'
  end

  def test_pig_latin_returnsoolschay
    pig_latin = PigLatinTranslater.new('school')

    assert pig_latin.call == 'oolschay'
  end

  def test_pig_latin_returns_ickquay
    pig_latin = PigLatinTranslater.new('quick')

    assert pig_latin.call == 'ickquay'
  end

  def test_pig_latin_returns_Erethay
    pig_latin = PigLatinTranslater.new('Hello There')

    assert pig_latin.call == 'Ellohay Erethay'
  end

  def test_pig_latin_returns_orldway
    pig_latin = PigLatinTranslater.new("she's great!")

    assert pig_latin.call == "e'sshay eatgray!"
  end
end

class PigLatinTranslater
  KEY_AY = 'ay'.freeze
  private_constant :KEY_AY

  KEY_WAY = 'way'.freeze
  private_constant :KEY_WAY

  attr_accessor :target

  def initialize(target)
    @target = target
  end

  def call
    change_words
  end

  private

  def change_words
    symbols = ['…', '!', '?']
    new_word = []

    target.split.map do |word|
      word = word.split('')
      strip_w = []
      word_end = ''

      word.each do |w|
        symbols.include?(w) ? word_end += w : strip_w << w
      end

      strip_w = strip_w.join

      translator = find_case(strip_w)
      translator += word_end

      new_word << translator
    end

    new_word.join(' ')
  end

  def find_case(strip_w)
    case strip_w
    when strip_w.downcase then first_case_translator(strip_w)
    when strip_w.upcase then second_case_translator(strip_w)
    when strip_w.capitalize then third_case_translator(strip_w)
    else false
    end
  end

  def first_case_translator(strip_w)
    first_l = strip_w[0]

    if three_letter_blends.include?(strip_w[..2].downcase)
      strip_w[3..strip_w.length] + strip_w[..2].downcase + KEY_AY
    elsif consonant_blends.include?(strip_w[..1])
      strip_w[2..strip_w.length] + strip_w[..1] + KEY_AY
    elsif consonant_blends.include?(strip_w[..1]) && three_letter_blends.include?(strip_w[2].downcase)
      strip_w[3..strip_w.length] + strip_w[..2] + KEY_AY
    elsif !dictionary_vowels.include?(first_l.upcase)
      strip_w[1..strip_w.length] + first_l + KEY_AY
    elsif dictionary_vowels.include?(first_l.upcase)
      strip_w[..strip_w.length] + KEY_WAY
    end
  end

  def second_case_translator(strip_w)
    first_l = strip_w[0]
    if !dictionary_vowels.include?(first_l)
      strip_w[1..strip_w.length] + first_l + KEY_AY.upcase
    else
      strip_w[..strip_w.length] + first_l + KEY_WAY.upcase
    end
  end

  def third_case_translator(strip_w)
    first_l = strip_w[0]
    second_l = strip_w[1]

    if consonant_blends.include?(strip_w[..1].downcase)
      strip_w[2].upcase + strip_w[3..strip_w.length] + first_l.downcase + second_l.downcase + KEY_AY
    elsif !dictionary_vowels.include?(first_l)
      second_l.upcase + strip_w[2..strip_w.length] + first_l.downcase + KEY_AY
    elsif dictionary_vowels.include?(first_l) && second_l == second_l.downcase
      strip_w[..strip_w.length] + KEY_WAY
    else
      first_l + strip_w[1..strip_w.length] + KEY_AY
    end
  end

  def dictionary_vowels
    %w[A E I O U Y]
  end

  def consonant_blends
    %w[th tw st gr sc qu sh]
  end

  def three_letter_blends
    %w[shr spl squ str thr sch]
  end
end

# def parse_word(strip_w)
#   UPCASE = 1
#   DOWNCASE = 2
#   TITLE = 3
#   CONSTANT_BLENDS = 4
#   THREE_LETTERS_BLENDS = 5
#   DICTIONARY_VOWELS = 6
#   WRONG = 0
# end

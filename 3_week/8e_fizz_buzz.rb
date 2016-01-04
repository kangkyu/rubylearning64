# def insert_word(num)
#   num % 3 == 0 && num % 5 == 0 ? 'FizzBuzz' : num % 3 == 0 ? 'Fizz' : num % 5 == 0 ? 'Buzz' : num
# end

# puts insert_word(3)

class Fizzbuzz
  def Fizzbuzz.fizzbuzz_upto(num)
    (1..num).reduce('') do |str, num|
      str + "#{insert_word(num)}" + "\n"
    end
  end

  def Fizzbuzz.insert_word(num)
    num % 3 == 0 && num % 5 == 0 ? 'FizzBuzz' : num % 3 == 0 ? 'Fizz' : num % 5 == 0 ? 'Buzz' : num
  end
end

require 'minitest/autorun'
class FizzbuzzTest < Minitest::Test

  def test_fizzbuzz_10
    expected = "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n"
    assert_equal expected, Fizzbuzz.fizzbuzz_upto(10)
  end

  def test_fizzbuzz_100
    expected = "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n16\n17\nFizz\n19\nBuzz\nFizz\n22\n23\nFizz\nBuzz\n26\nFizz\n28\n29\nFizzBuzz\n31\n32\nFizz\n34\nBuzz\nFizz\n37\n38\nFizz\nBuzz\n41\nFizz\n43\n44\nFizzBuzz\n46\n47\nFizz\n49\nBuzz\nFizz\n52\n53\nFizz\nBuzz\n56\nFizz\n58\n59\nFizzBuzz\n61\n62\nFizz\n64\nBuzz\nFizz\n67\n68\nFizz\nBuzz\n71\nFizz\n73\n74\nFizzBuzz\n76\n77\nFizz\n79\nBuzz\nFizz\n82\n83\nFizz\nBuzz\n86\nFizz\n88\n89\nFizzBuzz\n91\n92\nFizz\n94\nBuzz\nFizz\n97\n98\nFizz\nBuzz\n"
    assert_equal expected, Fizzbuzz.fizzbuzz_upto(100)
  end
end

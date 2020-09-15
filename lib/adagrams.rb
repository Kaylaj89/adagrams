def draw_letters
  letters_hash = {A: 9, B: 2, C: 2, D: 4, E: 12, F: 2, G: 3, H: 2, I: 9, J: 1, K: 1, L: 4, M:2, N: 6, O: 8, P: 2, Q: 1, R: 6, S:4, T: 6, U: 4, V: 2, W: 2, X: 1, Y: 2, Z: 1}
  letters_array = []

  letters_hash.each_pair do |letter, frequency|
    frequency.times do
      letters_array.push(letter.to_s)
    end
  end
  return letters_array.sample(10)
end

letters_in_hand = ['a','e','s','a','t','t']
input = gets.chomp

# def uses_available_letters?(input, letters_in_hand)
  input_array = input.chars
  if input_array.length <= letters_in_hand.length
   input_array.each do |letter|
    if letters_in_hand.include?(letter)
      letters_in_hand.delete(letter)
    else
      false
    end
   end
  else
    false
  end
# end

require 'prime'

MAX_VALUE = 1_000_000

primes = Prime.each(MAX_VALUE).to_a

sequence = 0
max_prime = 0
primes.each_with_index do |object, index|
  sum = object
  counter = 1
  array = primes.clone
  array.shift(index + 1)
  array.each do |prime|
    sum += prime
    break if sum > MAX_VALUE

    counter += 1
    next if counter < sequence

    if Prime.prime?(sum) && counter > sequence
      sequence = counter
      max_prime = sum
    end
  end
end
puts max_prime

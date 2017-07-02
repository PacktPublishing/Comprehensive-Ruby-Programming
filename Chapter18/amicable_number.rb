require 'mathn'

class Integer
  def dsum
    return 1 if self < 2
    pd = prime_division.flat_map{|n,p| [n] * p}
    ([1] + (1...pd.size).flat_map{ |e| pd.combination(e).map{
    |f| f.reduce(:*)
    }}).uniq.inject(:+)
  end
end

def find_d_sum(n)
  n.times.inject do |sum, cur|
    other = cur.dsum
    (cur != other && other.dsum == cur) ? sum + cur :sum
  end
end  

p find_d_sum(10_000)

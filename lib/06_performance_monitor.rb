require 'time'

def measure(n=1)
  before = Time.now
  n.times { yield }
  after = Time.now
  return (after-before)/n
end

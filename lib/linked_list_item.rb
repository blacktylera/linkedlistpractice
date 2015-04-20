class LinkedListItem
  include Comparable
  attr_reader :payload
  attr_reader :next_item

  def initialize(data)
    @payload = data
  end

  def last?
    next_item.nil?
  end

  def next_item=(lli)
    raise ArgumentError, "can't next_item to self" if self == lli
    @next_item = lli
  end

  def <=>(other)
    if self.payload.class == other.payload.class
      return self.payload <=> other.payload
    end
    if self.payload.is_a? Symbol
      1
    elsif self.payload.is_a? Fixnum
      -1
    else # I must be a String
      -1 * (other <=> self)
    end
  end

  def ===(other)
    self.equal? other
  end
end
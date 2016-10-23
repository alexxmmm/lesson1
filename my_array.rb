class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.find_all(&:odd?)
  end

  def multiple_to_three
    @array.find_all { |x| (x % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |elem| elem.to_f / 10 }
  end

  def chars
    alf = ('a'..'z').to_a
    @array.map { |elem| alf[elem - 1].to_sym }
  end

  def switch
    min_ind = @array.index(array.min)
    max_ind = @array.index(array.max)
    @array[min_ind], @array[max_ind] = @array[max_ind], @array[min_ind]
    @array
  end

  def before_min
    min_ind = @array.index(array.min)
    @array[0, min_ind]
  end

  def three_smallest
    @array.sort[0..2]
  end
end

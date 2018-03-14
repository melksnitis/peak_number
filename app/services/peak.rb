class Peak
  attr_accessor :array, :split_possibilities , :split_options_count


  def initialize(array)
    @array = array
    @split_possibilities = []
    @split_options_count = 0
  end


  def find_peak_options
    options = split_options
    splited_arrays = create_splited_arrays(options)

    splited_arrays.each_with_index do |splited_array, index|
      @split_possibilities << options[index] if find_peak(splited_array)
    end

    @split_options_count = @split_possibilities.count
  end

  def random_array(size)
    Array.new(size) { rand(0...1000000000) }
  end



  def create_splited_arrays(options, split = [])
    options.each do |item|
      split << @array.each_slice(item).to_a
    end
    split
  end

  def find_peak(arr)
    arr.each_with_index do |i, index|
      exist = false
      element_count = i.length

      for f in 0..element_count-1

        pos = element_count * index + f
        exist = true  if peak_exist?(pos)
      end

      return false if !exist
    end
    true
  end

  def peak_exist?(pos)
    return false if pos >= @array.length-1
    @array[pos - 1] < @array[pos] && @array[pos] > @array[pos + 1]
  end

  def split_options(n_array = [])
    ar_l = @array.length

    for i in 2..ar_l
      next if (@array.length % i) != 0
      n_array << i
    end

    return n_array
  end

end

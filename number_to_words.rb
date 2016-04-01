# This program converts numbers to words
def english_number(number)
  if number < 0
    puts "Please enter a number that is non-negative"
  end
  if number == 0
    puts "zero"
  end

  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
    'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty',
    'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number


  #Check for trillion
  write = left/1000000000000
  left  = left - write * 1000000000000

  if write > 0
    trillion = english_number(write)
    num_string = num_string + trillion + ' trillion'

    if left > 0
      num_string = num_string + ' and '
    end
  end


  #Check for billion
  write = left/1000000000
  left  = left - write * 1000000000

  if write > 0
    billion = english_number(write)
    num_string = num_string + billion + ' billion'

    if left > 0
      num_string = num_string + ' and '
    end
  end

  #Check for million
  write = left/1000000
  left  = left - write * 1000000

  if write > 0
    million = english_number(write)
    num_string = num_string + million + ' million'

    if left < 1000
      num_string = num_string + ' and '
    else
      num_string = num_string + ', '
    end
  end

  # Check for a thousand
  write = left/1000
  left  = left - write * 1000

  if write > 0
    thousand = english_number(write)
    num_string = num_string + thousand + ' thousand'

    if left < 100
      num_string = num_string + ' and '
    else
      num_string = num_string + ', '
    end
  end

  #Check for a hundred
  write = left/100
  left = left - write * 100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'

    if left > 0
      num_string = num_string + ' and '
    end
  end

  #Check for tens
  write = left/10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  #Check for unit
  write = left
  left  = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end

  num_string
end



puts english_number(9800);


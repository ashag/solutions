def rotate(array)
  # variable with empty array to hold numbers before k steps
  # variable to hold rotated array
  # counter variable
  # while counter is less than or equal to array length
    # push number to empty array
    # if counter is greater than (array length - 3)
      # push to rotated variable
    # end
    # increase counter by 1
    # append empty var to rotated array
    # return rotated
  # end
  # check if array is nil, or array isn't over 3 items
  hold_items = []
  rotated_array = []
  counter = 0

  if array == nil || array.length < 3
    return
  end

  while counter < array.length
    if counter < (array.length - 3)
     hold_items << array[counter]
    end

    if counter >= (array.length - 3)
      rotated_array << array[counter]
    end
    counter += 1
  end
  rotated_array << hold_items
  rotated_array.flatten
end
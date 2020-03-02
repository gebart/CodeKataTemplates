#!/usr/bin/env bats

source ./histogram_size

@test "script exists" {
  local actual=$(largest_rect_in_histogram 0)
  [ "${actual}" = 0 ]
}

@test 'minimal rect' {
  local actual=$(largest_rect_in_histogram 1)
  [ "${actual}" = 1 ]
}

@test 'non-straight histogram' {
  local actual=$(largest_rect_in_histogram 0 1)
  [ "${actual}" = 1 ]
}

@test 'small long square' {
  local actual=$(largest_rect_in_histogram 1 1)
  [ "${actual}" = 2 ]
}

@test 'L' {
  local actual=$(largest_rect_in_histogram 2 1)
  [ "${actual}" = 2 ]
}

@test 'J' {
  local actual=$(largest_rect_in_histogram 1 2)
  [ "${actual}" = 2 ]
}

@test 'sparse' {
  local actual=$(largest_rect_in_histogram 1 0 1 1 0 1)
  [ "${actual}" = 2 ]
}

@test 'Example' {
  local actual=$(largest_rect_in_histogram 2 1 5 6 2 3)
  [ "${actual}" = 10 ]
}

@test 'Large numbers' {
  local actual=$(largest_rect_in_histogram 1000000000 1000000000 2 3 4 5 6 1100000000)
  [ "${actual}" = 2000000000 ]
}

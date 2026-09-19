import gleam/int
import gleam/list

pub fn square_of_sum(n: Int) -> Int {
  let sum: Int = int.sum(list.range(1, n))
  sum * sum
}

pub fn sum_of_squares(n: Int) -> Int {
  case n {
    1 -> 1
    _ -> sum_of_squares(n - 1) + n * n
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}

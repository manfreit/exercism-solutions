pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    41 | 43 -> "So close"
    guess if guess < 42 -> "Too low"
    _ -> "Too high"
  }
}

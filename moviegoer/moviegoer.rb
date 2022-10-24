# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer

  @@PRICES = {normal: 15, discount: 10}
  @@AGE_RATE_SCARYMOVIE = 18

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? @@PRICES[:discount] : @@PRICES[:normal]
  end

  def watch_scary_movie?
    @age >= @@AGE_RATE_SCARYMOVIE ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member ? "🍿" : (raise NotMovieClubMemberError.new())
  end
end

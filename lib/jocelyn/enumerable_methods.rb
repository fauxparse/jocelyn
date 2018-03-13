module Enumerable
  def jostle(amount = 0.2)
    raise ArgumentError, 'amount must be between 0 and 1' \
      unless (0..1.0).cover?(amount)

    items = map.with_index(1) do |item, i|
      [item, (i * 1.0 / size) * (1.0 - amount) + rand * amount]
    end
    items.sort_by(&:last).map(&:first)
  end
end

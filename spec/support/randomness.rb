def mean_displacement(list)
  sorted = list.sort

  displacements = list.map.with_index do |item, index|
    (index - sorted.index(item)).abs * 1.0 / list.length
  end

  displacements.sum * 1.0 / displacements.length
end

def repeatedly
  1000.times do
    yield
  end
end

RSpec::Matchers.define :be_more_random_than do |expected|
  match do |actual|
    mean_displacement(actual) > mean_displacement(expected)
  end
end

RSpec::Matchers.define :be_about_as_random_as do |expected|
  match do |actual|
    (mean_displacement(actual) - mean_displacement(expected)).abs < 0.1
  end
end

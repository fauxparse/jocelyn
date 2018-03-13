RSpec.describe Jocelyn do
  it 'has a version number' do
    expect(Jocelyn::VERSION).not_to be nil
  end

  describe '#jostle' do
    let(:alphabet) { ('a'..'z').to_a }

    it 'provides predictable randomness' do
      repeatedly do
        expect(alphabet.jostle)
          .to be_about_as_random_as alphabet.jostle
      end
    end

    it 'provides variable randomness' do
      repeatedly do
        expect(alphabet.jostle(0.5))
          .to be_more_random_than alphabet.jostle(0.2)
      end
    end

    it 'defaults to 20% randomness' do
      repeatedly do
        expect(alphabet.jostle)
          .to be_about_as_random_as alphabet.jostle(0.2)
      end
    end

    it 'has a lower limit on randomness' do
      expect { alphabet.jostle(-0.5) }
        .to raise_error(ArgumentError, /must be between 0 and 1/)
    end

    it 'has an upper limit on randomness' do
      expect { alphabet.jostle(2) }
        .to raise_error(ArgumentError, /must be between 0 and 1/)
    end

    it 'works on ranges' do
      expect { (1..10).jostle }.not_to raise_error
    end
  end
end

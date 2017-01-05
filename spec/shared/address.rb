RSpec.shared_examples 'address' do
  describe '#name' do
    it 'returns full name' do
      billing_address = described_class.new(first_name: 'Viktor', last_name: 'Fonic')

      expect(billing_address.name).to eq('Viktor Fonic')
    end

    it 'returns first_name when last_name is not set' do
      billing_address = described_class.new(first_name: 'Viktor')

      expect(billing_address.name).to eq('Viktor')
    end

    it 'returns last_name when first_name is not set' do
      billing_address = described_class.new(last_name: 'Fonic')

      expect(billing_address.name).to eq('Fonic')
    end

    it 'returns empty string when first_name and last_name are not set' do
      billing_address = described_class.new

      expect(billing_address.name).to eq('')
    end
  end
end

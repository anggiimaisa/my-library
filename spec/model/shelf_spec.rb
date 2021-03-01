require './app/model/shelf'

describe Shelf do
  context 'check existence of Shelf data' do
    context 'valid?' do
      it 'should return false if shelf is empty' do
        shelf = Shelf.new('', '', '')
        expect(shelf.valid?).to eq(false)
      end
      it 'should return true if shelf is not empty' do
        shelf = Shelf.new('1', '2', '1')
        expect(shelf.valid?).to eq(true)
      end
      it 'should return false if shelf attribute more than 100' do
        shelf = Shelf.new('1', '201', '1')
        expect(shelf.valid?).to eq(false)
      end
      it 'should return false if shelf attribute less than 1' do
        shelf = Shelf.new('1', '1', '0')
        expect(shelf.valid?).to eq(false)
      end
    end
  end
  context 'print' do
    it 'should return double digit if number less than 10' do
      shelf = Shelf.new(1, 1, 1)
      expect(shelf.print).to eq('010101')
    end
    it 'should return its number if number more than 10' do
      shelf = Shelf.new(12, 13, 14)
      expect(shelf.print).to eq('121314')
    end
  end
end
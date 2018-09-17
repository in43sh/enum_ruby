require 'enums'

describe Enumerable do
  let (:arr) { [1, 10, 15, 27, -1, 100] }
  let (:arr_e) { [] }
  let (:arr_f) { [1, 5, false, '123', true, nil] }
  let (:hash) { {'one': 1, 'two':  2, 'three': 3, 'four': 4, 'five': 5} }
  let (:hash_e) { {} }
  let (:hash_f) { {'false': false, 'nil': nil, 'one': 1} }

  describe '#my_each' do
    context 'when no block is given or self is empty' do
      it 'should return Enumerator' do
        expect(arr.my_each).to be_a Enumerator
        expect(arr_e.my_each).to be_a Enumerator
        expect(arr_f.my_each).to be_a Enumerator
        expect(hash.my_each).to be_a Enumerator
        expect(hash_e.my_each).to be_a Enumerator
        expect(hash_f.my_each).to be_a Enumerator
      end
    end

    context 'when block is given' do
      it 'should return itself' do
        expect(arr.my_each {|x| x }).to eql arr
        expect(arr_e.my_each {|x| x }).to eql arr_e
        expect(arr_f.my_each {|x| x }).to eql arr_f
        expect(hash.my_each {|k, v| v }).to eql hash
        expect(hash_e.my_each {|k, v| v }).to eql hash_e
        expect(hash_f.my_each {|k, v| v }).to eql hash_f
      end
    end
  end
end
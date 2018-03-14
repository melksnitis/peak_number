require './app/services/peak'
describe Peak do

    let(:peak) { Peak.new([1, 2, 2, 2, 6, 2, 2, 6, 2, 2, 6, 2, 5, 8, 5]) }



    it "splits array in right options" do
      expect(peak.split_options).to eq [3, 5, 15]
    end

    it "can find a peak" do
      splited = [[1, 2, 6, 2, 6], [2, 2, 6, 2, 2], [6, 2, 5, 8, 5]]
      expect(peak.find_peak(splited)).to eq true
    end

    it "can't find a peak" do
      splited = [[1, 2, 2],[ 2, 6, 2], [2, 6, 2], [2, 6, 2], [5, 8, 5] ]
      expect(peak.find_peak(splited)).to eq false
    end

    it "array is splited in right portions" do
      peak.find_peak_options
      expect(peak.split_possibilities).to eq [5, 15]
    end

end

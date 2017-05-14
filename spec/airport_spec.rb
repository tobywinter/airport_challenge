require 'airport'

describe Airport do

    it "Responds to 'land_plane' method" do
      expect(subject).to respond_to :land_plane
    end

    it 'has variable to recieve and store planes' do
      expect(subject.planes).to eq []
    end

    it "Responds to 'confirm_landing' method" do
      expect(subject).to respond_to :confirm_landing
    end

    it "Responds to 'take_off' method" do
      expect(subject).to respond_to :take_off
    end

  describe '#land_plane' do

    it "Adds 'plane' to '@planes' when passed to 'land_plane'" do
      plane = double(:plane)
      expect(subject.land_plane(plane)).to eq [plane]
    end

  end

  describe '#confirm_landing' do

    it "Checks for 'plane' in @planes" do
      plane = double(:plane)
      subject.land_plane(plane)
      expect(subject.confirm_landing(plane)).to eq true
    end

  end

  describe '#take_off' do

    it "Removes 'plane' from @planes when it takes_off" do
      plane = double(:plane)
      subject.land_plane(plane)
      expect(subject.take_off(plane)).to eq []
    end
  end

end
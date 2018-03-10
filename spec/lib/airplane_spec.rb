require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) {Airplane.new("cesna", 10, 150)}

  describe "#initialization" do
    context 'when plane is made' do
      it 'its type is cesna' do
        expect(my_plane.type).to eq("cesna")
      end
      it 'its wing_loading is 10' do
        expect(my_plane.wing_loading).to eq(10)
      end
      it 'its horsepower is 150' do
        expect(my_plane.horsepower).to eq(150)
      end
    end
  end

  describe "#start" do
    context 'when plane is started' do
      it 'started from off' do
        expect(my_plane.start).to eq('airplane started')
      end
      it 'already started' do
        my_plane.start
        expect(my_plane.start).to eq('airplane already started')
      end
    end
  end

  describe "#land" do
    it 'should display the message that the plane has landed' do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq('airplane has landed')
    end
    it 'should display that the plane has not taken off' do
      expect(my_plane.land).to eq('airplane already on the ground')
    end
  end

  describe "#takeoff" do
    context 'when the plane takes off' do
      it 'should display the message that the plane has taken off' do
        expect(my_plane.takeoff).to eq('airplane has taken off')
      end
      it 'should display the message that plane is not started' do
        my_plane.start
        expect(my_plane.takeoff).to eq('airplane is not started')
      end
    end
  end
end

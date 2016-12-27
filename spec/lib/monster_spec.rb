require 'spec_helper'
require 'monster'

describe Monster do
	let(:monster) { Monster.new toughness: 2, damage: 4, notice: 1, gold: 10, experience: 20 }
	it "has toughness" do expect(monster.toughness).to eq(2) end
	it "has damage" do expect(monster.damage).to eq(4) end
	it "has notice" do expect(monster.notice).to eq(1) end
	it "has gold" do expect(monster.gold).to eq(10) end
	it "has experience" do expect(monster.experience).to eq(20) end

	it "is alive on initialization" do 
		expect(monster.dead?).to be false
	end

	it "can be killed" do 
		monster.kill
		expect(monster.dead?).to be true
	end
end
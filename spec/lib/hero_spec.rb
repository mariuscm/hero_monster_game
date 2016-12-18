require 'spec_helper'
require 'hero'

describe Hero do
	
	describe "default attributes" do
		let(:hero) {Hero.new}
		it "has default strength equal to 3" do
			expect(hero.strength).to eq(3)
		end
		it "has default health equal to 10" do
			expect(hero.health).to eq(10)
		end
	end

	it "can be initialized with custom strength" do
		hero = Hero.new strength: 3
		expect(hero.strength).to eq(3)
	end

	it "can be initialized with custom health" do
		hero = Hero.new health: 10
		expect(hero.health).to eq(10)
	end
end
require 'spec_helper'
require 'hero'

describe Hero do
	let(:dicepool) {double("dicepool")}
	let(:hero) { Hero.new }

	describe "default attributes" do
		it "has default strength equal to 3" do
			expect(hero.strength).to eq(3)
		end
		it "has default health equal to 10" do
			expect(hero.health).to eq(10)
		end
		it "has default gold equal to 0" do
			expect(hero.gold).to eq(0)
		end
		it "has default experience equal to 0" do
			expect(hero.experience).to eq(0)
		end
	end

	it "can be damaged" do
		hero.damage(3)
		hero.damage(2)
		expect(hero.health).to eq(5)
	end

	it "gains gold" do
		hero.gain_gold(4)
		hero.gain_gold(7)
		expect(hero.gold).to eq(11)
	end

	it "gains experience" do
		hero.gain_experience(4)
		hero.gain_experience(7)
		expect(hero.experience).to eq(11)
	end

	it "can be initialized with custom strength" do
		hero = Hero.new strength: 3
		expect(hero.strength).to eq(3)
	end

	it "can be initialized with custom health" do
		hero = Hero.new health: 8
		expect(hero.health).to eq(8)
	end

	describe "attack attack" do
		let(:attack_action) { double("attack_action") }
		let(:hero) {Hero.new actions: {attack: attack_action} } 
		
		it "has attack action" do
			expect(hero.actions[:attack]).to eq(attack_action)
		end

		it "activates attack action" do
			monster = double("monster")
			attack_action.should_receive(:activate)
			hero.activate_action :attack, monster
		end

	end
end
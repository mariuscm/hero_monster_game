require 'spec_helper'
require 'attack_action'

describe AttackAction do
	let(:hero) { double("hero")}
	let(:action) {AttackAction.new hero}
	
	it "responds to activate message" do
		expect(action).to respond_to(:activate)
	end

	it "has an owner" do
		expect(action.owner).to eq(hero)
	end

end
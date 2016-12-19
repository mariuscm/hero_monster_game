class Hero
	attr_reader :strength, :health, :actions, :gold, :experience

	def initialize(attr = {})
		@strength = attr.fetch(:strength, 3)
		@health = attr.fetch(:health, 10)
		@actions = attr.fetch(:actions, {})
		@gold = 0
		@experience = 0
	end

	def activate_action(action_name, target)
		actions[action_name].activate(target)
	end

	def damage(hit)
		@health -= hit
	end

	def gain_gold(amount)
		@gold += amount
	end

	def gain_experience(amount)
		@experience += amount
	end
end
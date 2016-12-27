class FleeAction
	attr_reader :owner, :dicepool

	def initialize(owner, dicepool)
		@owner = owner
		@dicepool = dicepool
	end

	def activate(target)
		if dicepool.skill_check(owner.stealth, target.notice)
			success(target)
		else
			failure(target)
		end
	end

end

def success(target)
	target.kill
	owner.gain_exp
	owner.gain_gold
end

def failure(target)
	owner.damage(target.damage)

end
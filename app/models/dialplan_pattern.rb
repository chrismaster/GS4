class DialplanPattern < ActiveRecord::Base
	
	has_many :dialplan_routes, :foreign_key => :pattern_id, :dependent => :restrict
	
	validates_presence_of   :pattern
	validate {
		require 'dialplan_pattern_matcher'
		begin
			dpp = DPP( :megaco_digitstring_mod, self.pattern )
			dpp || ( errors.add( :type, :invalid ) )
		rescue DialplanPatternMatcher::DialplanPatternInvalidError => e
			errors.add( :pattern, :invalid )
		end
	}
	
	validates_presence_of   :name, :allow_nil => false, :allow_blank => false
	validates_uniqueness_of :name, :allow_nil => false, :allow_blank => false
	
	
	def used_by_routes_count
		return (self.try(:dialplan_routes) || []).length
	end
	
	def t_used_by_routes_count( short_long = nil )
		return I18n.t( 'dp_pattern.being_used_in_x_routes.' << (short_long || :m).to_s,
			:count => self.used_by_routes_count
		)
	end
	
	
	def match( dialstring )
		begin
			require 'dialplan_pattern_matcher'
			dpp = DPP( :megaco_digitstring_mod, self.pattern )
			dpp || ( return false )
			return dpp.match( dialstring )
		rescue DialplanPatternMatcher::DialplanPatternInvalidError => e
			return false
		rescue => e
			return false
		end
	end
	
end

class LabelsPdf < Prawn::Document
	def initialize(members)
		super()
		@members = members
		@members.each do |member|
			pad_bottom(20) {
				text "#{member.first_name} #{member.last_name}"
				text "#{member.address}"
				text "#{member.post_code}"
			}
		end	
	end
end
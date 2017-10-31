require 'gosu'

class Shooter < Gosu::Window
	def initialize
		super 500, 500
		self.caption = "Shooter game"

		@background_image = Gosu::Image.new("grass.jpg", :tileable => true)
	end

	def update
		
	end

	def draw
		@background_image.draw(0, 0, 0)
	end
end

Shooter.new.show
require 'gosu'

class Shooter < Gosu::Window
	def initialize
		super 650, 500
		self.caption = "First game"

		@background_image = Gosu::Image.new("grass.jpg", :tileable => true)
	end

	def update
		
	end

	def draw
		@background_image.draw(0, 0, 0)
	end
end
class Player
	
	def initialize
		@character = Gosu::Image.new("duck.bmp")
		@x = @y = @vel_x = @vel_y = @angle = 0.0
		@score = 0
	end
	
	def warp(x, y)
		@x, @y = x, y		
	end	

	def turn_left
		@angle -= 4.5
	end

	def turn_right
		@angle += 4.5
	end

	def accelerate
		@vel_x += Gosu.offset_x(@angle, 0.5)
		@vel_y += Gosu.offset_y(@angle, 0.5)
	end

	def move
		@x += @vel_x
		@y += @vel_y
		@x %= 640
		@y %= 480

		@vel_x *= 0.95
		@vel_y *= 0.95
	end

	def draw
		@character.draw_rot(@x, @y, 1, @angle)
	end

end	

Shooter.new.show
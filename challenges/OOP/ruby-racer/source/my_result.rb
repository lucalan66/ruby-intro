require_relative 'racer_utils.rb'

class Game 
	extend ConsoleHelper
	attr_accessor :track1, :track2, :position1, :position2, :mov1, :mov2
	def initialize 
		@track1 = Track.new
		@track2 = Track.new	
		@track1.track[0] = '\ō͡≡o˞̶'
		@track2.track[0] = '\ō͡≡o˞̶'
		@position1 = 0
		@position2 = 0
		@mov1 = 0
		@mov2 = 0
			
	end

	def print_tracks			
		puts @track1.track.join
		puts @track2.track.join	
	end
	

	def move
		#acá moveremos cada carro 1
		until @position1 >= 29 || @position2 >= 29
			
		
			lanzamiento1 = Die.new
			@mov1 = lanzamiento1.rolld
			@track1.track[@position1] = '|'
			@position1 += @mov1		
			@track1.track[@position1] = '\ō͡≡o˞̶'
			#acá moveremos cada carro 2
			lanzamiento2 = Die.new
			@mov2 = lanzamiento1.roll
			@track2.track[@position2] = '|'
			@position2 += @mov2
			@track2.track[@position2] = '\ō͡≡o˞̶'

			#acá limpiamos pantalla, regresamos cursor
			#e imprimos la nueva pista
			Game.clear_screen!
			Game.move_to_home!
			self.print_tracks

	

			self.winner
			sleep(0.5)

		end
	end

	def winner
		if @track1.track.index('\ō͡≡o˞̶') >= 29 && @track2.track.index('\ō͡≡o˞̶') >= 29
			puts 'Han empatado!!'
		elsif @track2.track.index('\ō͡≡o˞̶') >= 29
			puts 'Player 2 ha ganado'
		elsif @track1.track.index('\ō͡≡o˞̶') >= 29
			puts 'Player 1 ha ganado'
		end

	end

	def track_end?
		if (@position1 < 30) && 
			(@position2 < 30)
			true
		else
			false
		end
	end


	
end



class Track
	attr_accessor :track
	def initialize
		@track  = Array.new(30, '|')
	end

	

end

	

game = Game.new
game.print_tracks

game.move
	





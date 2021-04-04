class Board

    attr_accessor :cells

    def reset!
       @cells =  Array.new(9, " ")
    end

    def initialize
        @cells =  Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
        puts "-----------"
    end

    def position(position)
        @cells[position.to_i - 1]
    end

    def full?
        @cells.each do |cell|
            if cell == " "
                return false
            end
        end
        true
    end

    def turn_count
        turns = 0
        @cells.each do |p|
           if p == "X" || p == "O"
            turns += 1
           end
        end
        turns
    end

    def taken?(index) 
        position(index) == " " ? false : true
    end

    def valid_move?(index)   
        !(taken?(index)) && (0..9).include?(index.to_i - 1)
    end

    def update(position, player_token)

        @cells[position.to_i - 1] = player_token.token
    
    end


end

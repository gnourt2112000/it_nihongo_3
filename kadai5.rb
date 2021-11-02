class Bingo
  def gen_card
    b = {:name=>"B",:numbers=>5.times.map { rand(1...15) }}
    i = {:name=>"I",:numbers=>5.times.map { rand(16...30) }}
    n = {:name=>"N",:numbers=>5.times.map { rand(31...45) }}
    n[:numbers][2] = ""
    g = {:name=>"G",:numbers=>5.times.map { rand(46...60) }}
    o = {:name=>"O",:numbers=>5.times.map { rand(61...75) }}

    puts " #{b[:name]} | #{i[:name]}  | #{n[:name]}  | #{g[:name]}  | #{o[:name]} "
    for j in 0..4
      puts "#{b[:numbers][j].to_s.rjust(2)} | #{i[:numbers][j].to_s.rjust(2)} | #{n[:numbers][j].to_s.rjust(2)} | #{g[:numbers][j].to_s.rjust(2)} | #{o[:numbers][j].to_s.rjust(2)}"  
    end
  end
end

bingo = Bingo.new
bingo.gen_card







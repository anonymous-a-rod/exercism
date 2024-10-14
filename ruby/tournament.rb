module Tournament
  def self.tally(input = nil)
    return @tally = header if input.nil? || input.chomp.empty?
    matches(input)
    @teams_stats
    @tally = display
  end

  private

  def self.header
    @header = "Team                           | MP |  W |  D |  L |  P\n"
  end

  def self.display
    @display = header

    @teams_stats.each do |team, stats|
      @display += "#{team.ljust(30)} | #{stats[:mp].to_s.rjust(2)} | #{stats[:w].to_s.rjust(2)} | #{stats[:d].to_s.rjust(2)} | #{stats[:l].to_s.rjust(2)} | #{stats[:p].to_s.rjust(2)}\n"
    end

    @display
  end

  def self.matches(input)
    @matches = []
    input.split("\n").each do |match|
      match.strip!
      @matches << match.split(';') unless match.empty?
    end
    teams_stats
    @matches
  end

  def self.teams_stats
    @teams_stats = {}
    team_names.each do |team_name|
      @teams_stats[team_name] = { mp: 0, w: 0, d: 0, l: 0, p: 0 }
    end
    calc_stats
    sort_ranks
    @teams_stats = sort_ranks
  end

  def self.sort_ranks
    @sort_ranks = @teams_stats.sort_by { |team, stats| [-stats[:p], team] }.to_h
  end

  def self.calc_stats
    @matches.each do |match|
      outcome = match[2]
      winner(match, outcome) if (outcome == "win" || outcome == "loss")
      draw(match) if outcome == "draw"
    end
  end

  def self.winner(match, outcome)
    win = outcome == "win"
    winner = win ? match[0] : match[1]
    loser = win ? match[1] : match[0]

    @teams_stats[winner][:mp] += 1
    @teams_stats[winner][:w] += 1
    @teams_stats[winner][:p] += 3

    @teams_stats[loser][:mp] += 1
    @teams_stats[loser][:l] += 1
  end

  def self.draw(match)
    team1 = match[0]
    team2 = match[1]

    [team1, team2].each do |team|
      @teams_stats[team][:mp] += 1
      @teams_stats[team][:d] += 1
      @teams_stats[team][:p] += 1
    end
  end

  def self.team_names
    matches_dup = @matches.dup
    matches_dup.flatten!
    # if only 1 match data
    if matches_dup.length == 3 && (matches_dup[2] == 'loss' || matches_dup[2] == 'win' || matches_dup[2] == 'draw')
      return @team_names = matches_dup[0, 2]
    end
    # if data for multiple matches
    @team_names = matches_dup.uniq!.select do |team|
      team != 'loss' && team != 'win' && team != 'draw'
    end
  end
end


input = "Allegoric Alaskans;Blithering Badgers;win\n
Devastating Donkeys;Courageous Californians;draw\n
Devastating Donkeys;Allegoric Alaskans;win\n
Courageous Californians;Blithering Badgers;loss\n
Blithering Badgers;Devastating Donkeys;loss\n
Allegoric Alaskans;Courageous Californians;win"

puts Tournament.tally(input)
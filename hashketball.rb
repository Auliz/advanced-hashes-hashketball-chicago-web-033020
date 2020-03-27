require 'pry'

def game_hash 
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players =>[ {
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },{
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },{
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },{
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },{
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players =>[ {
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },{
        :player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },{
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },{
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },{
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }
      ]
    }
  }
end 

def num_points_scored(p_name)
  final = nil
  game_hash.each do |team, details|
   players = details[:players]
   players.each do |player_details|
     if player_details[:player_name] == p_name
       final = player_details[:points]
     end 
   end 
  end 
  final
end 

def shoe_size(p_name)
  final = nil 
  game_hash.each do |team, details|
    players = details[:players]
    players.each do |player_details|
      if player_details[:player_name] == p_name
        final = player_details[:shoe]
      end 
    end 
  end 
  final
end 

def team_colors(t_name)
  final = nil
  game_hash.each do |team, details|
    if details[:team_name] == t_name
      final = details[:colors]
    end 
  end 
  final
end 

def team_names
  final = []
  game_hash.each do |team, details|
    final.push(details[:team_name])
  end 
  final
end 

def player_numbers(t_name)
  final = [] 
  game_hash.each do |team, details|
    players = details[:players]
    players.each do |player_details|
      if details[:team_name] == t_name 
        final.push(player_details[:number])
      end 
    end 
  end 
  final
end 

def player_stats(p_name)
  final = nil 
  game_hash.each do |team, details|
    details[:players].each do |stats|
      if stats[:player_name] == p_name 
        stats.delete(:player_name)
        final = stats
      end 
    end 
  end 
  final
end 

def big_shoe_rebounds
  bs = 0 
  rebounds = 0 
  game_hash.each do |team, details|
    details[:players].each do |stats|
      if stats[:shoe] > bs 
        bs = stats[:shoe]
        rebounds = stats[:rebounds]
      end 
    end 
  end 
  rebounds
end 
















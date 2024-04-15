%part2_a
function win_game = part2_a()
    n = 1;                                                                      
    player_stick = 0;
    player_switch = 0;
    
    for i = 1 : n
        disp(['Time: ', num2str(i)]);
        car = randi([1,3],1);                                                   
        choose = randi([1,3],1);                                                
        doors = [1 2 3];
        doors([car, choose]) = 0;
        host = doors(doors ~= 0);                                               
        open = host(randi(length(host)));                                       
    
        if car == choose                                                        
            disp('The player won by sticking her choice.');
            player_stick = player_stick + 1;
        else
            disp('The player lost by sticking her choice.');
        end
    
        change = setdiff([1, 2, 3], [choose, open]);
        if car == change                                                        
            disp('The player won by switching her choice.');
            player_switch = player_switch + 1;
        else
            disp('The player lost by switching her choice.');
        end
    end
    
    disp(' ');
    disp(['The probability of winning the car if the player sticks: ', num2str(player_stick/n)]);
    disp(['The fraction of times that the player wins when sticking: ', num2str(player_stick)]);
    disp(['The probability of winning the car if the player switches: ', num2str(player_switch/n)]);
    disp(['The fraction of times that the player wins when switching: ', num2str(player_switch)]);

    win_game = 0;
end
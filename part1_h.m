%part1_h
function win_game = part1_h()

    diceRoll1 = randi([1,2]);
    diceRoll2 = randi([1,2]);
    sum = diceRoll1 + diceRoll2;
    win_game = 0;

    if sum ~= 4
        old_sum = sum;
        while true
            diceRoll1 = randi([1,2]);
            diceRoll2 = randi([1,2]);
            new_sum = diceRoll1 + diceRoll2;
            if new_sum == 4               
                break;
            elseif new_sum == old_sum
                win_game = 1; 
                break;
            end
        end
    end

    if win_game == 1
        fprintf('win\n');
    else
        fprintf('lose\n');
    end
end
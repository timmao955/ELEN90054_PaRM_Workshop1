%part1_l_1
function win_game = part1_l_1()

    diceRoll1 = randi([1,6]);
    diceRoll2 = randi([1,6]);
    sum = diceRoll1 + diceRoll2;
    win_game = 0;

    if sum ~= 12
        old_sum = sum;
        while true
            diceRoll1 = randi([1,6]);
            diceRoll2 = randi([1,6]);
            new_sum = diceRoll1 + diceRoll2;
            if new_sum == 12               
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
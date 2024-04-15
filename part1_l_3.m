%part1_l_3
function win_fraction = part1_l_3()
    n = 50000;
    win_times = 0;

    for i = 1:n
        win_game = dicegame();
        win_times = win_times + win_game;
    end

    win_fraction = win_times / n;
    fprintf('Player won %d times in %d games\n', win_times, n);
    fprintf('The fraction of players winning is %.2f\n', win_fraction);
end

function win_game = dicegame()
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
end


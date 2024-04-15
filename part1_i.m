%part1_i
function win_game = part1_i()
    n = 10;
    win_times = 0;

    for i = 1:n
        if playRound()
            win_times = win_times + 1;
        end
    end

    win_fraction = win_times / n;
    fprintf('Player won %d times in %d games\n', win_times, n);
    fprintf('The fraction of player winning is %.2f\n', win_fraction);

    win_game = win_times;
end

function win = playRound()
    diceRoll1 = randi([1,2]);
    diceRoll2 = randi([1,2]);
    sum = diceRoll1 + diceRoll2;
    win = 0;

    if sum ~= 4
        old_sum = sum;
        while true
            diceRoll1 = randi([1,2]);
            diceRoll2 = randi([1,2]);
            new_sum = diceRoll1 + diceRoll2;
            if new_sum == 4
                break;
            elseif new_sum == old_sum
                win = 1;
                break;
            end
        end
    end
end
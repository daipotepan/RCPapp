begin
    puts "じゃんけん"
    puts "0(グー) 1(チョキ) 2(パー)"

    player = gets.to_i
    next if player < 0 || player > 2

    random = Random.new
    com = random.rand(3)

    hand = ["グー", "チョキ", "パー"]

    puts "あなたは#{hand[player]}を出した"
    puts "あいては#{hand[com]}を出した"

    if player == com
        puts "あいこ！もう一回"
        next

    elsif player == com - 1 || player == com + 2
        puts "あなたの勝ち！"
        pwin = true
    
    else
        puts "あいての勝ち！"
        pwin = false
    end

    while true
        puts "あっちむいて"
        puts "上(0) 下(1) 左(2) 右(3)"

        random = Random.new
        com_dir = random.rand(4)

        player_dir = gets.to_i

        puts "ホイ！！"
        next if player_dir < 0 || player_dir > 3

        dir = ["上", "下", "左", "右"]
        puts "あなたは#{dir[player_dir]}を出した"
        puts "あいては#{dir[com_dir]}を出した"

        if player_dir == com_dir

            puts pwin ? "あなたの勝ち" : "あいての勝ち"
        
        else
            puts "もう一回じゃんけんから"
        end

        break
    end
end while player_dir != com_dir
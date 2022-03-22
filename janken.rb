def face_game
puts"ジャンケン・・・・・"
  def janken

    puts"1(グー)2(チョキ)3(パー)"

    select_hand = gets.to_i

    until select_hand == 1 || select_hand == 2 || select_hand == 3
      puts "再入力してください"
      select_hand = gets.to_i
    end

    puts"ホイ"

    comp_hand = rand (1..3)

  
    if select_hand == 1
      puts"あなた：グー"
    elsif select_hand == 2
      puts"あなた：チョキ"
    elsif select_hand == 3
      puts"あなた：パー"
    end

    if comp_hand == 1
      puts"コンピュータ：グー"
    elsif comp_hand == 2
      puts"コンピュータ：チョキ"
    elsif comp_hand == 3
      puts"コンピュータ：パー"
    end
  
    if (select_hand == 1 and comp_hand == 2) or (select_hand == 2 and comp_hand == 3) or (select_hand == 3 and comp_hand == 1)
      puts "あなたの勝ちです"
      @face_flag = "win"
      return false
    
    elsif (select_hand == 1 and comp_hand == 3) or (select_hand == 2 and comp_hand == 1) or (select_hand == 3 and comp_hand == 2)
      puts "あなたの負けです"
      @face_flag = "lose"
      return false
    
    elsif select_hand == comp_hand
      puts "あいこで・・・・・"
      return true
  
    end
  
  end

  next_game = true

  while next_game
    next_game = janken
  end

  puts""
  
  if @face_flag == "win"
    puts "あっち向いて"
    puts "指を差す方向を選択　１(上)２(下)３(左)４(右)"
  
    select_direction = gets.to_i
    comp_direction = rand (1..4)
  
    until select_direction == 1 || select_direction == 2 || select_direction == 3 || select_direction == 4
      puts "再入力してください"
      select_direction = gets.to_i
    end
  
    puts "ホイ"
  
    if select_direction == 1
      puts"あなた：上"
    elsif select_direction == 2
      puts"あなた：下"
    elsif select_direction == 3
      puts"あなた：左"
    elsif select_direction == 4
      puts"あなた：右"
    end

    if comp_direction == 1
      puts"コンピュータ：上"
    elsif comp_direction == 2
      puts"コンピュータ：下"
    elsif comp_direction == 3
      puts"コンピュータ：左"
    elsif comp_direction == 4
      puts"コンピュータ：右"
    end
  
    if select_direction == comp_direction
      puts "あなたの勝ちです"
    return false
    else
    return true
    end
  
  elsif @face_flag == "lose"
    puts "あっち向いて"
    puts "顔を向ける方向を選択　１(上)２(下)３(左)４(右)"
    select_direction = gets.to_i
    comp_direction = rand (1..4)
  
    until select_direction == 1 || select_direction == 2 || select_direction == 3 || select_direction == 4
      puts "再入力してください"
      select_direction = gets.to_i
    end
  
    puts "ホイ"
  
    if select_direction == 1
      puts"あなた：上"
    elsif select_direction == 2
      puts"あなた：下"
    elsif select_direction == 3
      puts"あなた：左"
    elsif select_direction == 4
      puts"あなた：右"
    end

    if comp_direction == 1
      puts"コンピュータ：上"
    elsif comp_direction == 2
      puts"コンピュータ：下"
    elsif comp_direction == 3
      puts"コンピュータ：左"
    elsif comp_direction == 4
      puts"コンピュータ：右"
    end
  
    if select_direction == comp_direction
      puts "あなたの負けです"
    return false
    else
    return true
    end
  end
end

next_game = true

while next_game  
  next_game = face_game
end



puts""
puts"ゲームを終了します"

require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.to_s.chomp
    
    puts "あなたは"+memo_type+"を入力しました"
    
    if memo_type == "1"
        
        puts "拡張子を除いたファイル名を入力してください"
        memo_name = gets
        puts "メモしたい内容を記入してください"
        memo_content = gets
        memo = CSV.open(memo_name + ".csv","w")
        memo.puts [memo_content]
        
    elsif  memo_type == "2"
        
        puts "拡張子を除いたファイル名を入力してください"
        memo_name = gets
        memo = CSV.read(memo_name+".csv")
        puts "メモの内容は"
        puts "#{memo}です"
        puts "1(編集する) 2(編集せずに終了する)"
        
        edit_type = gets.to_s.chomp
        if edit_type == "1"
            puts "編集したい内容を記入してください"
            memo_content = gets
            memo = CSV.open(memo_name + ".csv","w")
            memo.puts [memo_content]
            puts "編集が完了いたしました"
            
        elsif edit_type == "2"
            puts "操作を終了いたします"
        else
            puts "正しい数字を入力してください"
        end
    else
        
        puts "正しい数字を入力してください"
    end

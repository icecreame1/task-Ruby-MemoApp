require "csv"

puts "実行したい処理を下記番号から選択して下さい。"
puts "1（新規でメモを作成する）　2（既存のメモを編集する）"
memo_type = gets.chomp!

if memo_type === "1"
  puts "【メモの新規作成】"
  puts "拡張子を除いてファイル名を入力して下さい。"
  memo_filename = gets.chomp

  puts "メモしたい内容を入力して下さい。"
  puts "入力が完了したら　ctrl ＋ D　を押して下さい。"
  memo_data = readlines.map(&:chomp)

  CSV.open("#{memo_filename}.csv",'w') do |csv|
    csv << memo_data
end

elsif memo_type === "2"
  puts "【メモの編集】"
  puts "編集したいファイルのファイル名を拡張子を除いて入力して下さい。"
  memo_filename = gets.chomp

  puts "編集内容を入力して下さい。"
  puts "入力が完了したら　ctrl ＋ D　を押して下さい。"
  memo_data = readlines.map(&:chomp)

  CSV.open("#{memo_filename}.csv",'a') do |csv|
    csv << memo_data
end

else
  puts "選択番号を確認して下さい"
end
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Quiz.destroy_all

Quiz.create!(
    question: "おすすめのお店を訪ねる際の表現はどれでしょう？",
    option1: "選択肢A",
    option2: "選択肢B",
    option3: "選択肢C",
    correct_option: 1,
    country: "japan"
  )

Quiz.create!(
    question: "値段を尋ねる表現はどれでしょう？",
    option1: "選択肢A",
    option2: "選択肢B",
    option3: "選択肢C",
    correct_option: 2,
    country: "japan"
  )

Quiz.create!(
    question: "服を試着したい場合に用いる表現はどれでしょう？",
    option1: "選択肢A",
    option2: "選択肢B",
    option3: "選択肢C",
    correct_option: 3,
    country: "japan"
  )

  Quiz.create!(
    question: "スーパーで売り場を訪ねる表現はどれでしょう？",
    option1: "選択肢A",
    option2: "選択肢B",
    option3: "選択肢C",
    correct_option: 1,
    country: "japan"
  )

  Quiz.create!(
    question: "道を尋ねる表現はどれでしょう？",
    option1: "選択肢A",
    option2: "選択肢B",
    option3: "選択肢C",
    correct_option: 2,
    country: "japan"
  )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
folders = [
   { folder_name:'楽しい', status: 0, user_id: 1 },
   { folder_name:'悲しい', status: 0, user_id: 1 },
   { folder_name:'うれしい', status: 1, user_id: 1 },
   { folder_name:'車', status: 0, user_id: 2 },
   { folder_name:'自転車', status: 0, user_id: 2 },
   { folder_name:'バイク', status: 1, user_id: 2 },
   { folder_name:'アニメ', status: 0, user_id: 3 },
   { folder_name:'小説', status: 0, user_id: 3 },
   { folder_name:'ドラマ', status: 1, user_id: 3 }
]

tasks = [
    { url: 'https://www.youtube.com/watch?v=8fdmlaVJFaI', description: 'たまたまみた', user_id: 1, folder_id: 6 },
    { url: 'https://www.youtube.com/watch?v=Mo_ibpa19sM', description: '楽しかった', user_id: 2, folder_id: 7 },
    { url: 'https://www.youtube.com/watch?v=r5I9b2lSy3M', description: '直接会いたい', user_id: 3, folder_id: 8 },
    { url: 'https://www.youtube.com/watch?v=AqL4RcC7a1Y', description: 'もっと見たい', user_id: 1, folder_id: 9 },
    { url: 'https://www.youtube.com/watch?v=rD9EK95Neag', description: 'チャンネルをチェック', user_id: 2, folder_id: 10 }
]
Task.create(tasks)

Folder.create(folders)


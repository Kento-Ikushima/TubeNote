# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = [
    { name:'ikushima', email: 'ikudhima@gmail.com', password: 111111,self_introduction:'Hey' },
{ name:'tanaka', email: 'tanaka@gmail.com', password: 111111,self_introduction:'yyyy' },
{ name:'kaminishi', email: 'kaminishi@gmail.com', password: 111111,self_introduction:'OK' },
{ name:'saitou', email: 'saitou@gmail.com', password: 111111,self_introduction:'wwwww' },
{ name:'takase', email: 'takase@gmail.com', password: 111111,self_introduction:'konnitiha' }

]

User.create(users)

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

Folder.create(folders)

tasks = [
    { url: 'https://www.youtube.com/watch?v=8fdmlaVJFaI', description: 'たまたまみた', user_id: 1, folder_id: 1 },
    { url: 'https://www.youtube.com/watch?v=Mo_ibpa19sM', description: '楽しかった', user_id: 2, folder_id: 2 },
    { url: 'https://www.youtube.com/watch?v=r5I9b2lSy3M', description: '直接会いたい', user_id: 3, folder_id: 3 },
    { url: 'https://www.youtube.com/watch?v=AqL4RcC7a1Y', description: 'もっと見たい', user_id: 1, folder_id: 1 },
    { url: 'https://www.youtube.com/watch?v=rD9EK95Neag', description: 'チャンネルをチェック', user_id: 2, folder_id: 3 }
]
Task.create(tasks)
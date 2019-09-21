# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user for sample
User.create([{
  email: 'sample@mail.com',
  name: 'Sample User',
  password: 'sampleuser'
},
{
  email: 'tanaka@mail.com',
  name: '田中',
  password: 'tanakadesu'
}])

Shelf.create([{
  shelf_name: 'サンプル本棚１',
  shelf_img: '',
  description: 'サンプル用の本棚です',
  user_id: 1,
  public: 0
},
{
  shelf_name: 'サンプル本棚２',
  shelf_img: '',
  description: '２つめの本棚です',
  user_id: 1,
  public: 0
},
{
  shelf_name: 'サンプル本棚２',
  shelf_img: '',
  description: '田中さんの本棚です',
  user_id: 2,
  public: 0
}])

Item.create([{
  item_type: 0,
  item_name: "雪国",
  has_read: 1,
  lend_to: 0,
  shelf_id: 1,
  user_id: 1,
  author: "川端康成",
  genre: "小説"
},
{
  item_type: 0,
  item_name: "ノルウェイの森",
  has_read: 0,
  lend_to: 0,
  shelf_id: 1,
  user_id: 1,
  author: "村上春樹",
  genre: "小説"
},{
  item_type: 0,
  item_name: "北欧アイスランド文学の歩み",
  has_read: 1,
  lend_to: 0,
  shelf_id: 2,
  user_id: 1,
  author: "清水誠",
  genre: "評論"
},{
  item_type: 1,
  item_name: "CHRONICLE",
  has_read: 1,
  lend_to: 0,
  shelf_id: 2,
  user_id: 1,
  author: "フジファブリック",
  genre: "CD"
},{
  item_type: 0,
  item_name: "檸檬",
  has_read: 1,
  lend_to: 0,
  shelf_id: 3,
  user_id: 2,
  author: "梶井基次郎",
  genre: "小説"
}])
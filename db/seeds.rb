# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
House.destroy_all

nights_watch = House.create!(name:"Night's Watch", slogan:"Sword in the Darkness", img_url: "http://vignette3.wikia.nocookie.net/game-of-thrones-the-age-of-seven-kingdoms/images/0/0b/Knights_Watch.jpg/revision/latest?cb=20150507114949")
house_stark = House.create!(name:"House Stark", slogan:"Winter is Coming", img_url:"http://img07.deviantart.net/bb2a/i/2011/348/e/1/game_of_thrones___house_stark_by_liquidsouldesign-d467f8l.jpg")
house_targaryen = House.create!(name:"House Targaryen", slogan:"Fire and Blood", img_url:"https://s-media-cache-ak0.pinimg.com/564x/09/c6/bf/09c6bf732fe1078131662039f5e1c6fd.jpg")
house_lannister = House.create!(name:"House Lannister", slogan:"Hear me Roar", img_url:"https://s-media-cache-ak0.pinimg.com/564x/d0/b2/c1/d0b2c1070a34ff44acf356b86bb6be64.jpg")
house_baratheon = House.create!(name:"House Baratheon", slogan:"Ours is the Fury", img_url:"https://s-media-cache-ak0.pinimg.com/originals/fe/83/ab/fe83ab8f186d180e8790564bf5a137ec.jpg")

jeor = Character.create!(name:"Jeor Mormont", img_url:"https://img.buzzfeed.com/buzzfeed-static/static/enhanced/webdr06/2013/6/28/14/grid-cell-32180-1372443110-8.jpg", house: nights_watch)
aemon = Character.create!(name:"Maester Aemon", img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/3/32/Aemonepisode5.png/revision/latest?cb=20150511170352", house: nights_watch)

lady = Character.create!(name:"Lady Catelyn Stark", img_url:"https://tribzap2it.files.wordpress.com/2015/06/game-of-thrones-season-3-catelyn-stark-michelle-fairley-hbo.jpg?w=900&h=506", house: house_stark)
eddard = Character.create!(name:"Eddard Stark", img_url:"http://www.wetpaint.com/wp-content/uploads/2015/08/ned-Stark-750x522-1439309945.jpg", house: house_stark)
#
daenerys = Character.create!(name:"Daenerys Targaryen", img_url:"http://fullhdpictures.com/wp-content/uploads/2015/10/Game-of-Thrones-Daenerys-Targaryen-Emilia-Clarke.jpg", house: house_targaryen)
viserys = Character.create!(name:"Viserys Targaryen", img_url:"http://staticimg.myfirstclasslife.com/wp-content/uploads/2016/04/28085609/A-Famous-Dragon.jpg", house: house_targaryen)

ser = Character.create!(name:"Ser Jaime Lannister", img_url:"https://s-media-cache-ak0.pinimg.com/736x/f1/ff/ee/f1ffee885e8232a3c3db0c844fab5ef0.jpg", house: house_lannister)
bronn = Character.create!(name:"Bronn", img_url:"https://s-media-cache-ak0.pinimg.com/736x/89/80/c3/8980c3a597314fe772445e91c30462f7.jpg", house: house_lannister)

queen = Character.create!(name:"Queen Cersei Baratheon", img_url:"http://assets.nydailynews.com/polopoly_fs/1.2689839.1467048436!/img/httpImage/image.jpg_gen/derivatives/article_750/game-thrones-season-5.jpg", house: house_baratheon)
king = Character.create!(name:"King Robert Baratheon", img_url:"http://cdn.images.express.co.uk/img/dynamic/galleries/x701/160504.jpg", house: house_baratheon)

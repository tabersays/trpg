# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(
    [
        { password: 'aaaaaaaa', email: 'a@a.com'},
        { password: 'bbbbbbbb', email: 'b@b.com'},
        { password: 'cccccccc', email: 'c@c.com'},
        { password: 'dddddddd', email: 'd@d.com'},
        { password: 'eeeeeeee', email: 'e@e.com'},
        { password: 'ffffffff', email: 'f@f.com'},
        { password: 'gggggggg', email: 'g@g.com'},
        { password: 'hhhhhhhh', email: 'h@h.com'},
        { password: 'iiiiiiii', email: 'i@i.com'},
        { password: 'password', email: 'tabersays@yahoo.com'}
    ]
)
characters = Character.create(
    [
        {image: '1.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'a', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '1' },
        {image: '2.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'b', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '2' },
        {image: '3.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'c', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '3' },
        {image: '4.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'd', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '4' },
        {image: '5.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'e', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '5' },
        {image: '6.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'f', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '6' },
        {image: '7.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'g', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '7' },
        {image: '8.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'h', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '8' },
        {image: '9.png', str: '1', dex: '1', con: '1', spd: '1', min: '1', end: '1', sol: '1' ,name: 'i', lv: '1', exp: '0', hp: '10', mp: '10', ep: '10', user_id: '9' },
        {image: '10.jpg',str: '2', dex: '3', con: '1', spd: '3', min: '2', end: '2', sol: '2' ,name: 'Storm', lv: '1', exp: '0', hp: '10', mp: '20', ep: '20', user_id: '10'},
        {image: '10.jpg',str: '100', dex: '100', con: '100', spd: '100', min: '100', end: '100', sol: '100' ,name: 'Valkyrie', lv: '100', hp: '1000', mp: '1000', ep: '1000', exp: '0', user_id: '10'}
    ]
)
items = Item.create(
    [
        {kind: 'Weapon', name: 'Sword', att: '3', def: '0', worth: '5', character_id: '1'},
        {kind: 'Pet', name: 'Cat', att: '3', def: '0', worth: '5', character_id: '1'},
        {kind: 'Weapon', name: 'Twig', att: '1', def: '0', worth: '5', character_id: '1'},
        {kind: 'Armor', name: 'Barkplate', att: '0', def: '1', worth: '5', character_id: '1'},
        {kind: 'Weapon', name: 'Hammer', att: '3', def: '0', worth: '5', character_id: '1'},
        {kind: 'Weapon', name: 'Bow', att: '3', def: '0', worth: '5', character_id: '1'},
        {kind: 'Weapon', name: 'Dagger', att: '3', def: '0', worth: '5', character_id: '1'},
        {kind: 'Treasure', name: 'Deck of Many Things', att: '0', def: '0', worth: '500', character_id: '11'},
        {kind: 'Treasure', name: 'Diamond', att: '0', def: '0', worth: '5000', character_id: '11'}
    ]

)




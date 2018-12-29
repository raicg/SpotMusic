#========================
# SONGS
#========================
 
tmp_dir = Rails.root.join("tmp")
 
 
rock = Category.create(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/categories/rock.png"), filename: "rock.png")
 
blues = Category.create(name: "Blues")
blues.image.attach(io: File.open("#{tmp_dir}/seed_files/categories/blues.png"), filename: "blues.png")
 
country = Category.create(name: "Country")
country.image.attach(io: File.open("#{tmp_dir}/seed_files/categories/country.png"), filename: "country.png")
 
jazz = Category.create(name: "Jazz")
jazz.image.attach(io: File.open("#{tmp_dir}/seed_files/categories/jazz.png"), filename: "jazz.png")


# ANDREW HOWS
 
andrew_howes = Artist.create(name: "Andrew Howes")
andrew_howes.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/andrew_howes.jpg"), filename: "andrew_howes.jpg")
 
gubernator = andrew_howes.album.create(title: "Gubernator", date: Time.strptime("18/05/2015", "%d/%m/%Y"), category: rock)
gubernator.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/gubernator.jpg"), filename: "gubernator.jpg")
 
dumb_luck = gubernator.song.create(title: "Dumb Luck", played_count: Random.rand(10000))
dumb_luck.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/dumb_luck.mp3"), filename: "dumb_luck.mp3")
helmsman = gubernator.song.create(title: "Helmsman", played_count: Random.rand(10000))
helmsman.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/helmsman.mp3"), filename: "helmsman.mp3")
crimea = gubernator.song.create(title: "Crimea", played_count: Random.rand(10000))
crimea.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/crimea.mp3"), filename: "crimea.mp3")
traitors_gate = gubernator.song.create(title: "Traitors Gate", played_count: Random.rand(10000))
traitors_gate.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/traitors_gate.mp3"), filename: "traitors_gate.mp3")
 
 
the_great_bear = andrew_howes.album.create(title: "The Great Bear", date: Time.strptime("19/05/2015", "%d/%m/%Y"), category: rock)
the_great_bear.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/the_great_bear.jpg"), filename: "the_great_bear.jpg")
 
big_drop = the_great_bear.song.create(title: "Big Drop", played_count: Random.rand(10000))
big_drop.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/big_drop.mp3"), filename: "big_drop.mp3")
four_am = the_great_bear.song.create(title: "4am", played_count: Random.rand(10000))
four_am.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/4_am.mp3"), filename: "4_am.mp3")
waiting = the_great_bear.song.create(title: "Waiting", played_count: Random.rand(10000))
waiting.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/waiting.mp3"), filename: "waiting.mp3")
 
 
 
# YELLOW CHAIR
 
yellow_chair = Artist.create(name: "Yellow Chair")
yellow_chair.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/yellow_chair.jpg"), filename: "yellow_chair.jpg")
 
barcelona = yellow_chair.album.create(title: "Barcelona", date: Time.strptime("07/01/2008", "%d/%m/%Y"), category: rock)
barcelona.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/barcelona.jpg"), filename: "barcelona.jpg")
 
via_laietana = barcelona.song.create(title: "Via Laietana", played_count: Random.rand(10000))
via_laietana.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/via_laietana.mp3"), filename: "via_laietana.mp3")
passeig_de_gracia = barcelona.song.create(title: "Passeig de Gràcia", played_count: Random.rand(10000))
passeig_de_gracia.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/passeig_de_gracia.mp3"), filename: "passeig_de_gracia.mp3")
itaca = barcelona.song.create(title: "Itaca", played_count: Random.rand(10000))
itaca.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/itaca.mp3"), filename: "itaca.mp3")
 
 
everything_zen = yellow_chair.album.create(title: "Everything Zen", date: Time.strptime("01/07/2013", "%d/%m/%Y"), category: rock)
everything_zen.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/everything_zen.jpg"), filename: "everything_zen.jpg")
 
everything_zen_music = everything_zen.song.create(title: "Everything Zen", played_count: Random.rand(1000))
everything_zen_music.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/everything_zen.mp3"), filename: "everything_zen.mp3")
 
 
meng_jia = yellow_chair.album.create(title: "Meng Jia", date: Time.strptime("07/03/2014", "%d/%m/%Y"), category: rock)
meng_jia.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/meng_jia.jpg"), filename: "meng_jia.jpg")
 
malvinas_go_go = meng_jia.song.create(title: "Malvinas Go-Go", played_count: Random.rand(1000))
malvinas_go_go.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/malvinas_go_go.mp3"), filename: "malvinas_go_go.mp3")
coronation_pope_francis = meng_jia.song.create(title: "Coronation of Pope Francis", played_count: Random.rand(1000))
coronation_pope_francis.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/coronation_pope_francis.mp3"), filename: "coronation_pope_francis.mp3")
 
 
# WAYLON THORNTON
 
waylon_thornton = Artist.create(name: "Waylon Thornton")
waylon_thornton.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/waylon_thornton.jpg"), filename: "waylon_thornton.jpg")
 
mystery_club = waylon_thornton.album.create(title: "Mystery Club", date: Time.strptime("29/06/2011", "%d/%m/%Y"), category: rock)
mystery_club.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/mystery_club.jpg"), filename: "mystery_club.jpg")
 
wobbly_way = mystery_club.song.create(title: "Wobbly Way", played_count: Random.rand(10000))
wobbly_way.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/wobbly_way.mp3"), filename: "wobbly_way.mp3")
very_hazel = mystery_club.song.create(title: "Very Hazel", played_count: Random.rand(10000))
very_hazel.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/very_hazel.mp3"), filename: "very_hazel.mp3")
favorite_secrets = mystery_club.song.create(title: "Favorite Secrets", played_count: Random.rand(10000))
favorite_secrets.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/favorite_secrets.mp3"), filename: "favorite_secrets.mp3")
 
 
 
 
# BREAK THE BANS
 
break_the_bans = Artist.create(name: "Break the Bans")
break_the_bans.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/break_the_bans.jpg"), filename: "break_the_bans.jpg")
 
covers_besides = break_the_bans.album.create(title: "Covers & B-sides", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category: blues)
covers_besides.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/covers_besides.jpg"), filename: "covers_besides.jpg")
 
how_can_i_love_her = covers_besides.song.create(title: "How can I love her", played_count: Random.rand(10000))
how_can_i_love_her.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/how_can_i_love_her.mp3"), filename: "how_can_i_love_her.mp3")
 
 
# CULLAH
 
cullah = Artist.create(name: "Cullah")
cullah.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/cullah.jpg"), filename: "cullah.jpg")
 
be_love_not_fear = cullah.album.create(title: "Be Love Not Fear", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category: blues)
be_love_not_fear.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/be_love_not_fear.jpg"), filename: "be_love_not_fear.jpg")
 
save_my_soul = be_love_not_fear.song.create(title: "Save my Soul", played_count: Random.rand(10000))
save_my_soul.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/save_my_soul.mp3"), filename: "save_my_soul.mp3")
who_am_i = be_love_not_fear.song.create(title: "Who am I?", played_count: Random.rand(10000))
who_am_i.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/who_am_i.mp3"), filename: "who_am_i.mp3")
jane_the_ripper = be_love_not_fear.song.create(title: "Jane the Ripper", played_count: Random.rand(10000))
jane_the_ripper.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/jane_the_ripper.mp3"), filename: "jane_the_ripper.mp3")
 
 
trinity = cullah.album.create(title: "Trinity", date: Time.strptime("27/04/2016", "%d/%m/%Y"), category: blues)
trinity.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/trinity.jpg"), filename: "trinity.jpg")
 
freed_from_greed = trinity.song.create(title: "Freed from Greed", played_count: Random.rand(10000))
freed_from_greed.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/freed_from_greed.mp3"), filename: "freed_from_greed.mp3")
aisling = trinity.song.create(title: "Aisling", played_count: Random.rand(10000))
aisling.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/aisling.mp3"), filename: "aisling.mp3")
 
 
 
 
# HANDMADE MOMENTS
 
handmade_moments = Artist.create(name: "Handmade Moments")
handmade_moments.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/handmade_moments.jpg"), filename: "handmade_moments.jpg")
 
paw_paw_tree = handmade_moments.album.create(title: "Paw Paw Tree", date: Time.strptime("29/07/2013", "%d/%m/%Y"), category: country)
paw_paw_tree.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/paw_paw_tree.jpg"), filename: "paw_paw_tree.jpg")
 
junkie = paw_paw_tree.song.create(title: "Junkie", played_count: Random.rand(10000))
junkie.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/junkie.mp3"), filename: "junkie.mp3")
fighting_a_mountain = paw_paw_tree.song.create(title: "Fighting a Mountain", played_count: Random.rand(10000))
fighting_a_mountain.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/fighting_a_mountain.mp3"), filename: "fighting_a_mountain.mp3")
wanderin_eyes = paw_paw_tree.song.create(title: "Wanderin' Eyes", played_count: Random.rand(10000))
wanderin_eyes.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/wanderin_eyes.mp3"), filename: "wanderin_eyes.mp3")
human_hands = paw_paw_tree.song.create(title: "Human Hands", played_count: Random.rand(10000))
human_hands.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/human_hands.mp3"), filename: "human_hands.mp3")
coffee_chocolate_earth = paw_paw_tree.song.create(title: "Coffee, Chocolate, Earth", played_count: Random.rand(10000))
coffee_chocolate_earth.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/coffee_chocolate_earth.mp3"), filename: "coffee_chocolate_earth.mp3")
 
 
 
# DEE YAN-KEY
 
dee_yan_key = Artist.create(name: "Dee Yan-Key")
dee_yan_key.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/dee_yan_key.jpg"), filename: "dee_yan_key.jpg")
 
years_and_years_ago = dee_yan_key.album.create(title: "Years and Years Ago",  date: Time.strptime("17/05/2011", "%d/%m/%Y"), category: jazz)
years_and_years_ago.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/years_and_years_ago.jpg"), filename: "years_and_years_ago.jpg")
 
lazy = years_and_years_ago.song.create(title: "Lazy")
lazy.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/lazy.mp3"), filename: "lazy.mp3")
snow = years_and_years_ago.song.create(title: "Snow")
snow.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/snow.mp3"), filename: "snow.mp3")
grief = years_and_years_ago.song.create(title: "Grief")
grief.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/grief.mp3"), filename: "grief.mp3")
clowns = years_and_years_ago.song.create(title: "Clowns")
clowns.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/clowns.mp3"), filename: "clowns.mp3")
 
 
mans_life = dee_yan_key.album.create(title: "A Man's Life",  date: Time.strptime("17/09/2012", "%d/%m/%Y"), category: jazz)
mans_life.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/mans_life.jpg"), filename: "mans_life.jpg")
 
life = mans_life.song.create(title: "Life")
life.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/life.mp3"), filename: "life.mp3")
death_redemption = mans_life.song.create(title: "Death & Redemption")
death_redemption.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/death_redemption.mp3"), filename: "death_redemption.mp3")
 
 
aldebaran = dee_yan_key.album.create(title: "Aldebaran",  date: Time.strptime("30/01/2012", "%d/%m/%Y"), category: jazz)
aldebaran.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/aldebaran.jpg"), filename: "aldebaran.jpg")
 
antares, = aldebaran.song.create(title: "Antares", played_count: 267017)
antares.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/antares.mp3"), filename: "antares.mp3")
 
 
# KING IMAGINE
 
king_imagine = Artist.create(name: "King Imagine")
king_imagine.photo.attach(io: File.open("#{tmp_dir}/seed_files/artists/king_imagine.jpg"), filename: "king_imagine.jpg")
 
inside = king_imagine.album.create(title: "Inside",  date: Time.strptime("30/09/2012", "%d/%m/%Y"), category: jazz)
inside.cover.attach(io: File.open("#{tmp_dir}/seed_files/albums/inside.jpg"), filename: "inside.jpg")
 
ivy = inside.song.create(title: "Ivy")
ivy.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/ivy.mp3"), filename: "ivy.mp3")
escape = inside.song.create(title: "Escape")
escape.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/escape.mp3"), filename: "escape.mp3")
 

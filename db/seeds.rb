User.create!([
  {email: "than.viet.bach@gmail.com",
   password: "bach123", password_confirmation: "bach123",
   name: "Than Viet Bach", username: "vietbach"},
  {email: "vu.thu.hien@gmail.com",
   password: "hien123", password_confirmation: "hien123",
   name: "Vu Thu Hien", username: "hienvu", is_admin: 1},
  {email: "nguyen.dinh.chinh@gmail.com",
   password: "chinh123", password_confirmation: "chinh123",
   name: "Nguyen Dinh Chinh", username: "dinhchinh"},
  {email: "nguyen.van.hung@gmail.com",
   password: "hung123", password_confirmation: "hung123",
   name: "Nguyen Van Hung", username: "hungnguyen"},
  {email: "doi.khac.thanh@gmail.com",
   password: "thanh123", password_confirmation: "thanh123",
   name: "Doi Khac Thanh", username: "thanhdoi"}
])

Country.create!([
  {code: "US", name: "United States",
   flag_image: File.open(Rails.root + "public/uploads/image/us.png")},
  {code: "EN", name: "England",
   flag_image: File.open(Rails.root + "public/uploads/image/en.png")},
  {code: "JP", name: "Japan",
   flag_image: File.open(Rails.root + "public/uploads/image/jp.png")},
  {code: "CA", name: "Canada",
   flag_image: File.open(Rails.root + "public/uploads/image/ca.png")},
  {code: "LB", name: "Lebanon",
   flag_image: File.open(Rails.root + "public/uploads/image/lb.png")},
  {code: "AUS", name: "Australia",
   flag_image: File.open(Rails.root + "public/uploads/image/aus.jpg")}, 
  {code: "SWE", name: "Sweden",
   flag_image: File.open(Rails.root + "public/uploads/image/swe.png")}, 
  {code: "ESP", name: "Spain",
   flag_image: File.open(Rails.root + "public/uploads/image/sp.png")}, 
])

Movie.create!([
  {name: "Star Wars: Episode V - The Empire Strikes Back", imdb: 8.8,
   realease_date: "1980/06/20", producer: "Lucasfilm", director: "Irvin Kershner", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/SW1.jpg"),
   description: "The second entry in George Lucas' Star Wars trilogy finds Luke Skywalker (Mark Hamill), the green-as-grass hero from the first film, now a seasoned space warrior. Luke's Star Wars cohorts Han Solo (Harrison Ford) and Princess Leia (Carrie Fisher) are likewise moreexperienced in the ways and means of battling the insidious Empire, as represented by the brooding Darth Vader (body of David Prowse, voice of James Earl Jones)."},
  {name: "The Lord of the Rings: The Fellowship of the Ring", imdb: 8.9,
   realease_date: "2001/12/19", producer: "New Line Cinema", director: " Peter Jackson", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/LoR.jpg"),
   description: "Assisted by a Fellowship of heroes, Frodo Baggins plunges into a perilous trek to take the mystical One Ring to Mount Doom so that it and its magical powers can be destroyed and never possessed by evil Lord Sauron. The astonishing journey begins in the first film of director/co-writer Peter Jackson's epic trilogy that redefined fantasy filmmaking. This imaginative foray into J.R.R."},
  {name: "Spirited Away", imdb: 8.6,
   realease_date: "2003/03/28", producer: "Studio Ghibli", director: "Hayao Miyazaki", country_id: 3,
   avatar: File.open(Rails.root + "public/uploads/image/sp.jpg"),
   description: "Master animation director Hayao Miyazaki follows up on his record-breaking 1997 opus Princess Mononoke with this surreal Alice in Wonderland-like tale about a lost little girl. The film opens with ten-year-old Chihiro riding along during a family outing as her father races through remote country roads. When they come upon a blocked tunnel, her parents decide to have a look around -- even though Chihiro finds the place very creepy."},
  {name: "The Shawshank Redemption", imdb: 9.2,
   realease_date: "1994/10/14", producer: "Columbia Pictures",
   director: "Frank Darabont", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg"),
   description: "In 1946, a banker named Andy Dufresne (Tim Robbins) is convicted of a double murder, even though he stubbornly proclaims his innocence. He's sentenced to a life term at the Shawshank State Prison in Maine, where another lifer, Ellis \"Red\" Redding (Morgan Freeman), picks him as the new recruit most likely to crack under the pressure."},
  {name: "It", imdb: 7.8,
   realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/it.jpg"),
   description: "New Line Cinema's horror thriller \"IT\" directed by Andy Muschietti (\"Mama\"), is based on the hugely popular Stephen King novel of the same name, which has been terrifying readers for decades. When children begin to disappear in the town of Derry, Maine, a group of young kids are faced with their biggest fears when they square off against an evil clown named Pennywise, whose history of murder and violence dates back for centuries."},
  {name: "Forrest Gump", imdb: 8.7,
   realease_date: "1994/07/06", producer: "Paramount Pictures", director: "Robert Zemeckis", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/gump.jpg"),
   description: "\"Stupid is as stupid does\", says Forrest Gump (played by Tom Hanks in an Oscar-winning performance) as he discusses his relative level of intelligence with a stranger while waiting for a bus. Despite his sub-normal IQ, Gump leads a truly charmed life, with a ringside seat for many of the most memorable events of the second half of the 20th century."},
  {name: "Inception", imdb: 8.7,
   realease_date: "2010/07/16", producer: "Warner Bros. Pictures", director: " Christopher Nolan", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/inception.jpg"),
   description: "Visionary filmmaker Christopher Nolan (Memento, The Dark Knight) writes and directs this psychological sci-fi action film about a thief who possesses the power to enter into the dreams of others. Dom Cobb (Leonardo DiCaprio) doesn't steal things, he steals ideas. By projecting himself deep into the subconscious of his targets, he can glean information that even the best computer hackers can't get to. In the world of corporate espionage, Cobb is the ultimate weapon. But even weapons have their weakness, and when Cobb loses everything, he's forced to embark on one final mission in a desperate quest for redemption."},
  {name: "The Matrix", imdb: 8.7,
   realease_date: "1999/3/31", producer: "Warner Bros. Pictures", director: "The Wachowski Brothers", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/matrix.jpg"),
   description: "What if virtual reality wasn't just for fun, but was being used to imprison you? That's the dilemma that faces mild-mannered computer jockey Thomas Anderson (Keanu Reeves) n The Matrix. It's the year 1999, and Anderson (hacker alias: Neo) works in a cubicle, manning a computer and doing a little hacking on the side. It's through this latter activity that Thomas makes the acquaintance of Morpheus (Laurence Fishburne), who has some interesting news for Mr. Anderson -- none of what's going on around him is real."},
  {name: "One Piece Film Z", imdb: 8.0,
   realease_date: "2012/12/15", producer: "Toei Animation", director: "Tatsuya Nagamine", country_id: 3,
   avatar: File.open(Rails.root + "public/uploads/image/OPz.jpg"),
   description: "A former Marine admiral steals the Dyna Stones, and stands in the way of the Straw Hat Pirates."},
  {name: "Zootopia", imdb: 8.0,
   realease_date: "2016/2/19", producer: "Walt Disney Pictures", director: "Byron Howard", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/zoo.jpg"),
   description: "The modern mammal metropolis of Zootopia is a city like no other. Comprised of habitat neighborhoods like ritzy Sahara Square and frigid Tundra town, it's a melting pot whereanimals from every environment live together-a place where no matter what you are, from the biggest elephant to the smallest shrew, you can be anything. But when rookie Officer Judy Hopps(voice of Ginnifer Goodwin) arrives, she discovers that being the first bunny on a police force of big, tough animals isn't so easy."},
  {name: "Kimi no na wa.", imdb: 8.5,
   realease_date: "2016/10/27", producer: "FUNimation Films", director: "Makoto Shinkai", country_id: 3,
   avatar: File.open(Rails.root + "public/uploads/image/yn.jpg"),
   description: "From director Makoto Shinkai, the innovative mind behind Voices of a Distant Star and 5 Centimeters Per Second, comes a beautiful masterpiece about time, the thread of fate,and the hearts of two young souls. The day the stars fell, two lives changed forever. Highschoolers Mitsuha and Taki are complete strangers living separate lives. But one night, theysuddenly switch places. Mitsuha wakes up in Taki's body, and he in hers."},
  {name: "The Dark Knight", imdb: 9.0,
   realease_date: "2008/7/18", producer: "Warner Bros.", director: "Christopher Nolan", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/batman.jpg"),
   description: "Christopher Nolan steps back into the director's chair for this sequel to Batman Begins, which finds the titular superhero coming face to face with his greatest nemesis -- the dreaded Joker. Christian Bale returns to the role of Batman, Maggie Gyllenhaal takes over the role of Rachel Dawes (played by Katie Holmes in Batman Begins), and Brokeback Mountain star Heath Ledger dons the ghoulishly gleeful Joker makeup previously worn by Jack Nicholson and Cesar Romero. Just as it begins to appear as if Batman, Lt. James Gordon (Gary Oldman), and District Attorney Harvey Dent (Aaron Eckhart) are making headway in their tireless battle against the criminal element, a maniacal, wisecracking fiend plunges the streets of Gotham City into complete chaos."},
  {name: "Spider-Man: Homecoming", imdb: 7.8,
   realease_date: "2017/7/7", producer: "Marvel Studios", director: "Jon Watts", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/spider.jpg"),
   description: "A young Peter Parker/Spider-Man (Tom Holland), who made his sensational debut in Captain America: Civil War, begins to navigate his newfound identity as the web-slinging super hero in Spider-Man: Homecoming. Thrilled by his experience with the Avengers, Peter returns home, where he lives with his Aunt May (Marisa Tomei), under the watchful eye of his new mentor Tony Stark (Robert Downey, Jr.)."},
  {name: "Deadpool", imdb: 8.0,
   realease_date: "2016/2/12", producer: "20th Century Fox Film Corporation", director: "Tim Miller", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/deadpool.jpg"),
   description: "Based upon Marvel Comics' most unconventional anti-hero, DEADPOOL tells the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life. "},
  {name: "Gone Girl", imdb: 8.1,
   realease_date: "2014/9/26", producer: "20th Century Fox Film Corporation", director: "David Fincher", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/gone.jpg"),
   description: "GONE GIRL - directed by David Fincher and based upon the global bestseller by Gillian Flynn - unearths the secrets at the heart of a modern marriage. On the occasion of his fifth wedding anniversary, Nick Dunne (Ben Affleck) reports that his beautiful wife, Amy (Rosamund Pike), has gone missing. Under pressure from the police and a growing media frenzy, Nick's portrait of a blissful union begins to crumble. Soon his lies, deceits and strange behavior have everyone asking the same dark question: Did Nick Dunne kill his wife? "},
  {name: "Pirates of the Caribbean: Dead Men Tell No Tales", imdb: 6.8,
   realease_date: "2017/5/26", producer: "Walt Disney Pictures", director: "Joachim Rønning", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/Carribe.jpg"),
   description: "Johnny Depp returns to the big screen as the iconic, swashbuckling anti-hero Jack Sparrow in the all-new \"Pirates of the Caribbean: Dead Men Tell No Tales.\" The rip-roaring adventure finds down-on-his-luck Captain Jack feeling the winds of ill-fortune blowing strongly his way when deadly ghost sailors, led by the terrifying Captain Salazar (Javier Bardem), escape from the Devil's Triangle bent on killing every pirate at sea-notably Jack."},
  {name: "Fantastic Beasts and Where to Find Them", imdb: 7.4,
   realease_date: "2016/10/11", producer: "Warner Bros.", director: "David Yates", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/fantasic.jpg"),
   description: "This spin-off of the Harry Potter franchise jumps back in time to explore the wizarding world of 1926 New York, which is being threatened by both mystical acts of destruction and a group of extremist No-Majs (the American term for Muggles, i.e. those unable to use magic). Author Newt Scamander (Eddie Redmayne) arrives in the city as part of a global study of fantastic beasts, but he gets caught up in this conflict when some of the magical creatures in his care are accidentally released."},
  {name: "The Imitation Game", imdb: 8.0,
   realease_date: "2014/12/14", producer: "Black Bear Pictures", director: "Morten Tyldum", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/game.jpg"),
   description: "During the winter of 1952, British authorities entered the home of mathematician, cryptanalyst and war hero Alan Turing (Benedict Cumberbatch) to investigate a reported burglary. They instead ended up arresting Turing himself on charges of 'gross indecency', an accusation that would lead to his devastating conviction for the criminal offense of homosexuality - little did officials know, they were actually incriminating the pioneer of modern-day computing."},
  {name: "Kingsman: The Golden Circle", imdb: 7.3,
   realease_date: "2017/9/20", producer: "Clubhouse Pictures (II)", director: "Matthew Vaughn", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/kingman.jpg"),
   description: "\"Kingsman: The Secret Service\" introduced the world to Kingsman - an independent, international intelligence agency operating at the highest level of discretion, whose ultimate goal is to keep the world safe. In \"Kingsman: The Golden Circle\", our heroes face a new challenge. When their headquarters are destroyed and the world is held hostage, their journey leads them to the discovery of an allied spy organization in the US called Statesman, dating back to the day they were both founded. In a new adventure that tests their agents' strength and wits to the limit, these two elite secret organizations band together to defeat a ruthless common enemy, in order to save the world, something that's becoming a bit of a habit for Eggsy..."},
  {name: "Crows zero", imdb: 7.1,
   realease_date: "2007/10/27", producer: "Akita Shoten", director: "Takashi Miike", country_id: 3,
   avatar: File.open(Rails.root + "public/uploads/image/zero.jpg"),
   description: "Idiosyncratic Japanese auteur Takashi Miike offers another meditation on a violent culture in this teen-themed thriller. Genji Takaya (Shun Oguri) is a teenage troublemaker whose father, Hideo (Goro Kishitani), is a high-ranking member of the yakuza. Genji is a new student at Suzuran Boys' High, a educational facility for juvenile delinquents nicknamed \"The School for Crows\" and he's determined to make a name for himself as someone who doesn't back down from a challenge in order to impress both his father and his new classmates. Not long after arriving on campus, Genji comes to blows with Ken Katagiri (Kyosuke Yabe), who thinks at first that the new kid is someone else."},
  {name: "Blade Runner 2049", imdb: 8.6,
   realease_date: "2017/10/5", producer: "Columbia Pictures", director: "Denis Villeneuve", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/blade.jpg"),
   description: "Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what's left of society into chaos. K's discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years."},
  {name: "Split", imdb: 7.3,
   realease_date: "2017/2/17", producer: "Blinding Edge Pictures", director: "M. Night Shyamalan", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/mv-22.jpg"),
   description: "While the mental divisions of those with dissociative identity disorder have long fascinated and eluded science, it is believed that some can also manifest unique physical attributes for each personality, a cognitive and physiological prism within a single being. Though Kevin has evidenced 23 personalities to his trusted psychiatrist, Dr. Fletcher, there remains one still submerged who is set to materialize and dominate all the others. Compelled to abduct three teenage girls led by the willful, observant Casey, Kevin reaches a war for survival among all of those contained within him - as well as everyone around him - as the walls between his compartments shatter apart."},
  {name: "Baby Driver", imdb: 7.9,
   realease_date: "2017/8/27", producer: "TriStar Pictures", director: "Edgar Wright", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/mv-23.jpg"),
   description: "A talented, young getaway driver (Ansel Elgort) relies on the beat of his personal soundtrack to be the best in the game. But after being coerced into working for a crime boss (Kevin Spacey), he must face the music when a doomed heist threatens his life, love and freedom."},
  {name: "Get Out", imdb: 7.7,
   realease_date: "2017/2/24", producer: "Blumhouse Productions", director: "Jordan Peele", country_id: 1,
   avatar: File.open(Rails.root + "public/uploads/image/mv-24.jpg"),
   description: "Now that Chris and his girlfriend, Rose, have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with Missy and Dean. At first, Chris reads the family's overly accommodating behavior as nervous attempts to deal with their daughter's interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he could have never imagined."},
  {name: "Geostorm", imdb: 7.1,
    realease_date: "2017/10/20", producer: "Warner Bros. Pictures", director: "Dean Devlin", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/mv-25.jpg"),
    description: "When catastrophic climate change endangers Earth's very survival, world governments unite and create the Dutch Boy Program: a world wide net of satellites, surrounding the planet, that are armed with geoengineering technologies designed to stave off the natural disasters. After successfully protecting the planet for two years, something is starting to go wrong. Two estranged brothers are tasked with solving the program's malfunction before a world wide Geostorm can engulf the planet."},
  {name: "Mission: Impossible - Rogue Nation", imdb: 7.4,
  realease_date: "2015/07/31", producer: "Paramount Pictures",
  director: "Christopher McQuarrie", country_id: 1,
  avatar: File.open(Rails.root + "public/uploads/image/im.jpg"),
  description: "Ethan and team take on their most impossible mission yet, eradicating the Syndicate - an International rogue organization as highly skilled as they are, committed to destroying the IMF."},
  {name: "My Little Pony: The Movie", imdb: 6.6, realease_date: "2017/10/06", producer: "Imaginarium Productions", director: "Jayson Thiessen", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/pony.jpg"), description: "A dark force threatens Ponyville, and the Mane 6 - Twilight Sparkle, Applejack, Rainbow Dash, Pinkie Pie, Fluttershy, and Rarity - embark on an unforgettable journey beyond Equestria where they meet new friends and exciting challenges on a quest to use the magic of friendship to save their home."}, 
  {name: "Breathe", imdb: 6.5, realease_date: "2017/10/27", producer: "Imaginarium Productions", director: "Andy Serkis", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/breathe.jpg"), description: "When Robin is struck down by polio at the age of 28, he is confined to a hospital bed and given only a few months to live. With the help of Diana's twin brothers (Tom Hollander) and the groundbreaking ideas of inventor Teddy Hall (Hugh Bonneville), Robin and Diana dare to escape the hospital ward to seek out a full and passionate life together - raising their young son, traveling and devoting their lives to helping other polio patients."}, 
  {name: "Lady Bird", imdb: 7.7, realease_date: "2017/11/3", producer: "Scott Rudin Productions", director: "Greta Gerwig", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/bird.jpg"), description: "The adventures of a young woman living in Northern California for a year."}, 
  {name: "The Florida Project", imdb: 8.1, realease_date: "2017/10/10", producer: "Cre Film", director: "Sean Baker", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/florida.jpg"), description: "Set over one summer, the film follows precocious 6-year-old Moonee as she courts mischief and adventure with her ragtag playmates and bonds with her rebellious but caring mother, all while living in the shadows of Disney World."}, 
  {name: "Doctor Strange", imdb: 7.5, realease_date: "2016/11/04", producer: "Marvel Studios", director: "Scott Derrickson", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/doctor.jpg"), description: "While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts."}, 
  {name: "Thor: Ragnarok", imdb: 7.2, realease_date: "2017/10/27", producer: "Marvel Studios", director: "Taika Waititi", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/thor.jpg"), description: "Imprisoned, the mighty Thor finds himself in a lethal gladiatorial contest against the Hulk, his former ally. Thor must fight for survival and race against time to prevent the all-powerful Hela from destroying his home and the Asgardian civilization."}, 
  {name: "Only the Brave", imdb: 7.0, realease_date: "2017/10/20", producer: "Carousel Productions (II)", director: " Joseph Kosinski", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/brave.jpg"), description: "Based on the true story of the Granite Mountain Hotshots, a group of elite firefighters risk everything to protect a town from a historic wildfire."}, 
  {name: "Murder on the Orient Express", imdb: 8.0, realease_date: "2017/11/10", producer: "20th Century Fox Film Corporation", director: "Kenneth Branagh", country_id: 2, avatar: File.open(Rails.root + "public/uploads/image/murder.jpg"), description: "A lavish train ride unfolds into a stylish & suspenseful mystery. From the novel by Agatha Christie, Murder on the Orient Express tells of thirteen stranded strangers & one man's race to solve the puzzle before the murderer strikes again."},
  {name: "Earth: One Amazing Day", imdb: 7.0, realease_date: "2017/10/20", producer: "Black Label Media", director: "Richard Dale, Lixin Fan", country_id: 2, avatar: File.open(Rails.root + "public/uploads/image/earth.jpg"), description: "From BBC Earth Films, the studio that brought you Earth, comes the sequel - Earth: One Amazing Day, an astonishing journey revealing the awesome power of the natural world. Over the course of one single day, we track the sun from the highest mountains to the remotest islands to exotic jungles. Breakthroughs in filmmaking technology bring you up close with a cast of unforgettable characters. Told with humour, intimacy and a jaw-dropping sense of cinematic splendour, Earth: One Amazing Day highlights how every day is filled with more wonders than you can possibly imagine- until now."},
  {name: "Justice League", imdb: 6.5, realease_date: "2017/11/17", producer: "DC Entertainment", director: "Zack Snyder", country_id: 1, avatar: File.open(Rails.root + "public/uploads/image/jl.jpg"), description: "Fueled by his restored faith in humanity and inspired by Superman's selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy. Together, Batman and Wonder Woman work quickly to find and recruit a team of metahumans to stand against this newly awakened threat. But despite the formation of this unprecedented league of heroes-Batman, Wonder Woman, Aquaman, Cyborg and The Flash-it may already be too late to save the planet from an assault of catastrophic proportions."},
  {name: "The Invisible Guest", imdb: 8.0, realease_date: "2017/10/06", producer: "Atresmedia Cine", director: "Oriol Paulo", country_id: 8, avatar: File.open(Rails.root + "public/uploads/image/ig.jpg"), description: "Adrián Doria, a wealthy businessman named Man of the Year due to his high-tech company and his trade agreements with the Asian market, meets Virginia Goodman, a veteran lawyer expert in witness preparation and judicial declaration, recommended by Adrián's lawyer Felix Leiva in order to create a credible defense. Arrested by the police in a mountain hotel room with the corpse of his lover at his side, photographer Laura Vidal, Adrián talks Virginia about the crime and his relationship with Laura, revealing that both suffered a car crash where a man called Daniel Garrido died, and how Laura manipulated Adrián to avoid the jail by Daniel's death. At the same time that Félix is looking for a clue that it could change the course of the events, Virginia and Adrián keep talking about the case but her, unconvinced of the Adrián's testimony, forces him to clear the dark points of his history, in a puzzle where the truth and the lie are easily exchangeable."},
  # {name: "The Shape of Water", imdb: 7.4,
  # realease_date: "2017/12/8", producer: "Bull Productions", director: "Guillermo del Toro", country_id: 1,
  # avatar: File.open(Rails.root + "public/uploads/image/water.jpg"),
  # description: "An other-worldly fairy tale, set against the backdrop of Cold War era America circa 1962. In the hidden high-security government laboratory where she works, lonely Elisa (Sally Hawkins) is trapped in a life of isolation. Elisa's life is changed forever when she and co-worker Zelda (Octavia Spencer) discover a secret classified experiment."},
  {name: "Koe no katachi", imdb: 8.2,
   realease_date: "2017/5/12", producer: "Kyoto Animation", director: "Naoko Yamada", country_id: 3,
   avatar: File.open(Rails.root + "public/uploads/image/koe.jpg"),
   description: "The story revolves around Nishimiya Shoko, a grade school student who has impaired hearing. She transfers into a new school, where she is bullied by her classmates, especially Ishida Shouya. It gets to the point where she transfers to another school and as a result, Shouya is ostracized and bullied himself, with no friends to speak to and no plans for the future. Years later, he sets himself on a path to redemption."},
  # {name: "", imdb: ,
  #   realease_date: "", producer: "", director: "", country_id: 1,
  #   avatar: File.open(Rails.root + "public/uploads/image/sp.jpg"),
  #   description: ""},
])

Actor.create!([
  {name: "Leonardo DiCaprio", avatar_image: File.open(Rails.root + "public/uploads/image/leo.jpg"),
   birthday: "1974/11/11", country_id: 1, description: "Few actors in the world have had a career quite as 
diverse as Leonardo DiCaprio's. DiCaprio has gone from relatively humble beginnings, as a supporting
cast member of the sitcom Growing Pains (1985) and low budget horror movies, such as
Critters 3 (1991), to a major teenage heartthrob in the 1990s, as the hunky lead actor in movies
such as Romeo + Juliet (1996) and Titanic (1997), to then become a leading man in Hollywood
blockbusters, made by internationally renowned directors such as Martin Scorsese and Christopher Nolan."},
  {name: "Keanu Reeves", avatar_image: File.open(Rails.root + "public/uploads/image/kee.jpg"),
   birthday: "1962/9/2", country_id: 5, description: "Keanu Charles Reeves, whose first name means 
\"cool breeze over the mountains\" in Hawaiian, was born September 2, 1964 in Beirut, Lebanon.
He is the son of Patricia Taylor, a showgirl and costume designer, and Samuel Nowlin Reeves,
a geologist. Keanu's father was born in Hawaii, of British, Portuguese, Native Hawaiian, and
Chinese ancestry, and Keanu's mother is originally from England. After his parents' marriage
dissolved, Keanu moved with his mother and younger sister, Kim Reeves, to New York City,
then Toronto. Stepfather #1 was Paul Aaron, a stage and film director - he and Patricia divorced
within a year, after which she went on to marry (and divorce) rock promoter Robert Miller and
hair salon owner Jack Bond. Reeves never reconnected with his biological father. In high school,
Reeves was lukewarm toward academics but took a keen interest in ice hockey (as team goalie,
he earned the nickname \"The Wall\") and drama. He eventually dropped out of school to pursue
an acting career."},
  {name: "Ryunosuke Kamiki", avatar_image: File.open(Rails.root + "public/uploads/image/kamiki.jpg"),
   birthday: "1993/5/19", country_id: 3, description: "Ryûnosuke Kamiki was born on May 19, 1993 
in Saitama, Japan. He is an actor, known for Sen to Chihiro no kamikakushi (2001),
Your name? (2016) and Hauru no ugoku shiro (2004)."},
  {name: "Tom Hanks", avatar_image: File.open(Rails.root + "public/uploads/image/hank.jpg"),
   birthday: "1956/7/9", country_id: 1, description: "Thomas Jeffrey Hanks was born in Concord, California, 
to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook.
His mother's family, originally surnamed \"Fraga\", was entirely Portuguese, while his father was
of mostly English ancestry. Tom grew up in what he has called a fractured family. He moved
around a great deal after his parents' divorce, living with a succession of step-families.
No problems, no alcoholism - just a confused childhood. He has no acting experience in college
and credits the fact that he could not get cast in a college play with actually starting his career.
He went downtown, and auditioned for a community theater play, was invited by the director
of that play to go to Cleveland, and there his acting career started."},
  {name: "Christian Bale", avatar_image: File.open(Rails.root + "public/uploads/image/leo.jpg"),
   birthday: "1974/1/30", country_id: 2, description: "Christian Charles Philip Bale was born in 
Pembrokeshire, Wales, UK on January 30, 1974, to English parents Jennifer \"Jenny\" (James)
and David Charles Howard Bale. His mother was a circus performer and his father, who was born
in South Africa, was a commercial pilot. The family lived in different countries throughout Bale's
childhood, including England, Portugal, and the United States. Bale acknowledges the constant
change was one of the influences on his career choice.<br><br>
His first acting job was a cereal commercial in 1983; amazingly, the next year, he debuted on
the West End stage in \"The Nerd\". A role in the 1986 NBC mini-series Anastasia: The Mystery
of Anna (1986) caught Steven Spielberg's eye, leading to Bale's well-documented role in Empire
of the Sun (1987). For the range of emotions he displayed as the star of the war epic,
he earned a special award by the National Board of Review for Best Performance by a Juvenile Actor."},
  {name: "Heath Ledger", avatar_image: File.open(Rails.root + "public/uploads/image/heath.jpg"),
   birthday: "1979/4/4", country_id: 6, description: "Heath Ledger was born on the fourth of April 1979, 
in Perth, Western Australia, to Sally (Ramshaw), a teacher of French, and Kim Ledger, a mining
engineer who also raced cars. His ancestry was Scottish, English, Irish, and Sephardi Jewish.
As the story goes, in junior high school it was compulsory to take one of two electives, either
cooking or drama. As Heath could not see himself in a cooking class he tried his hand at drama.
Heath was talented, however the rest of the class did not acknowledge his talent. When he was
seventeen he and a friend decided to pack up, leave school, take a car and rough it to Sydney.
Heath believed Sydney to be the place where dreams were made or, at least, where actors could
possibly get their big break. Upon arriving in Sydney with a purported sixty-nine cents to his name,
Heath tried everything to get a break."},
  {name: "Tom Holland", avatar_image: File.open(Rails.root + "public/uploads/image/tom holland.jpg"),
   birthday: "1996/6/1", country_id: 2, description: "Thomas Stanley Holland was born in 
Kingston-upon-Thames, Surrey, to Nicola Elizabeth (Frost), a photographer, and Dominic Holland
(Dominic Anthony Holland), who is a comedian and author. His paternal grandparents were from
the Isle of Man and Ireland, respectively. He lives with his parents and three younger brothers -
Paddy and twins Sam and Harry. Tom attended Donhead Prep School. Then, after a successful
eleven plus exam, he became a pupil at Wimbledon College. Having successfully completed his
GCSEs, in September 2012 Tom started a two-year course in the BRIT School for Performing Arts &
Technology notable for its numerous famous alumni."},
  {name: "Johnny Depp", avatar_image: File.open(Rails.root + "public/uploads/image/Depp.jpg"),
   birthday: "1963/6/9", country_id: 1, description: "Johnny Depp is perhaps one of the most versatile 
actors of his day and age in Hollywood.<br><br>
He was born John Christopher Depp II in Owensboro, Kentucky, on June 9, 1963, to Betty Sue
(Wells), who worked as a waitress, and John Christopher Depp, a civil engineer.<br><br>
Depp was raised in Florida. He dropped out of school when he was 15, and fronted a series of
music-garage bands, including one named 'The Kids'. However, it was when he married Lori Anne
Allison (Lori A. Depp) that he took up the job of being a ballpoint-pen salesman to support himself
and his wife. A visit to Los Angeles, California, with his wife, however, happened to be a blessing in
disguise, when he met up with actor Nicolas Cage, who advised him to turn to acting, which
culminated in Depp's film debut in the low-budget horror film, A Nightmare on Elm Street (1984),
where he played a teenager who falls prey to dream-stalking demon Freddy Krueger."},
  {name: "Eddie Redmayne", avatar_image: File.open(Rails.root + "public/uploads/image/Eddie.jpg"),
   birthday: "1982/1/6", country_id: 2, description: "British actor Eddie Redmayne is the first, and thus far 
only, millennial male to have won an acting Oscar (for The Theory of Everything (2014)).<br><br>
Edward John David Redmayne was born and raised in London, England, the son of Patricia (Burke)
and Richard Charles Tunstall Redmayne, a businessman. His great-grandfather was Sir Richard
Augustine Studdert Redmayne, a noted civil and mining engineer. He has English, Irish, Scottish
and Welsh ancestry. Redmayne is the only member of his family to follow a career in acting, and also
modeled during his teen years. He was educated at Eton College before going on to Trinity College,
Cambridge, where he studied History of Art. Encouraged by his parents, Redmayne took drama
lessons from a young age. His first stage appearance was in the Sam Mendes production of \"Oliver!\",
in London's West End. He played a workhouse boy. Acting continued through school and university,
including performing with the National Youth Music Theatre."},
  {name: "Benedict Cumberbatch", avatar_image: File.open(Rails.root + "public/uploads/image/Benedict.jpg"),
   birthday: "1976/7/19", country_id: 2, description: "Benedict Timothy Carlton Cumberbatch was born and raised 
in London, England. His parents, Wanda Ventham and Timothy Carlton (Timothy Carlton Congdon
Cumberbatch), are both actors. He is a grandson of submarine commander Henry Carlton Cumberbatch,
and a great-grandson of diplomat Henry Arnold Cumberbatch CMG. Cumberbatch attended Brambletye
School and Harrow School. Whilst at Harrow, he had an arts scholarship and painted large oil canvases.
It's also where he began acting. After he finished school, he took a year off to volunteer as an English
teacher in a Tibetan monastery in Darjeeling, India. On his return, he studied drama at Manchester
University. He continued his training as an actor at the London Academy of Music and Dramatic Art
graduating with an M.A. in Classical Acting. By the time he had completed his studies, he already had
an agent."},
  {name: "Shun Oguri", avatar_image: File.open(Rails.root + "public/uploads/image/shun.jpg"),
   birthday: "1982/12/26", country_id: 3, description: "Shun Oguri was born on December 26, 1982 in 
Tokyo, Japan. He is an actor and director, known for Crows zero (2007), Crows zero II (2009)
and Rainbow: Nishakubou no shichinin (2010). He has been married to Yu Yamada since
March 14, 2012."},
  {name: "Ian McKellen", avatar_image: File.open(Rails.root + "public/uploads/image/ian.jpg"),
   birthday: "1939/5/25", country_id: 2, description: "Widely regarded as one of greatest stage and
screen actors, both in his native Great Britain and internationally, twice nominated for the
Oscar and recipient of every major theatrical award in UK and US, Ian Murray McKellen was born
on May 25, 1939 in Burnley, Lancashire, England, to Margery Lois (Sutcliffe) and Denis Murray
McKellen, a civil engineer. He is of Scottish, Northern Irish, and English descent. During his
early childhood, his parents moved with Ian and his sister Jean to the mill town of Wigan. It
was in this small town that young Ian rode out World War II. He soon developed a fascination
with acting and the theater, which was encouraged by his parents. They would take him to plays,
those by William Shakespeare, in particular. The amateur school productions fostered Ian's
growing passion for theatre."},
  {name: "Orlando Bloom", avatar_image: File.open(Rails.root + "public/uploads/image/olando.jpg"),
   birthday: "1977/1/13", country_id: 2, description: "Orlando Jonathan Blanchard Bloom was born
in Canterbury, Kent, England on January 13, 1977. His mother, Sonia Constance Josephine
(Copeland), was born in Kolkata, India, to an English family then-resident there. The man he
briefly knew as his father, Harry Bloom, was a legendary political activist who fought for
civil rights in South Africa. But Harry died of a stroke when Orlando was only four years old.
After that, Orlando and his older sister, Samantha Bloom, were raised by their mother and
family friend, Colin Stone. When Orlando was thirteen, Sonia revealed to him that Colin is
actually the biological father of Orlando and his sister; the two were conceived after an
agreement by his parents, since Harry was then-unable to have children."},
  {name: "Liam Neeson", avatar_image: File.open(Rails.root + "public/uploads/image/liam.jpg"),
   birthday: "1952/6/7", country_id: 2, description: "Liam Neeson was born on June 7, 1952 in
Ballymena, Northern Ireland, UK, to Katherine (Brown), a cook, and Bernard Neeson, a school
caretaker. Liam worked as a forklift operator for Guinness, truck driver, assistant architect
and an amateur boxer. He had originally sought a career as a teacher by attending St. Mary's
Teaching College, Newcastle. However, in 1976, Neeson joined the Belfast Lyric Players'
Theater and made his professional acting debut in the play \"The Risen People\". After two
years, Neeson moved to Dublin's Abbey Theater where he performed the classics. It was here
that he was spotted by director John Boorman and was cast in the film Excalibur (1981) as
Sir Gawain, his first high-profile film role."},
  {name: "Natalie Portman", avatar_image: File.open(Rails.root + "public/uploads/image/natalie.jpg"),
   birthday: "1982/6/9", country_id: 1, description: "Natalie Portman is the first person born
in the 1980s to have won the Academy Award for Best Actress (for Black Swan (2010)).<br><br>
Natalie was born Natalie Hershlag on June 9, 1981, in Jerusalem, Israel. She is the only child
of Avner Hershlag, an Israeli-born doctor, and Shelley Stevens, an American-born artist
(from Cincinnati, Ohio), who also acts as Natalie's agent. She left Israel for Washington, D.C.,
when she was still very young. After a few more moves, her family finally settled in New York,
where she still lives to this day. She graduated with honors, and her academic achievements
allowed her to attend Harvard University. She was discovered by an agent in a pizza parlor at
the age of 11. She was pushed towards a career in modeling but she decided that she would rather
pursue a career in acting. She was featured in many live performances, but she made her
powerful film debut in the movie Léon (1994) (aka \"Léon\"). Following this role Natalie won
roles in such films as Heat (1995), Beautiful Girls (1996), and Mars Attacks! (1996)."},
  {name: "Tim Robbins", avatar_image: File.open(Rails.root + "public/uploads/image/actor-16.jpg"),
   birthday: "1958/10/16", country_id: 1, description: "Born in West Covina, California, but
raised in New York City, Tim Robbins is the son of former The Highwaymen singer Gil Robbins
and actress Mary Robbins (née Bledsoe). Robbins studied drama at UCLA, where he graduated with
honors in 1981. That same year, he formed the Actors' Gang theater group, an experimental
ensemble that expressed radical political observations through the European avant-garde form
of theater. He started film work in television movies in 1983, but hit the big time in 1988
with his portrayal of dimwitted fastball pitcher \"Nuke\" Laloosh in Bull Durham (1988).
Tall with baby-faced looks, he has the ability to play naive and obtuse (Cadillac Man (1990)
and The Hudsucker Proxy (1994)) or slick and shrewd (The Player (1992) and Bob Roberts (1992))."},
  {name: "Morgan Freeman", avatar_image: File.open(Rails.root + "public/uploads/image/actor-17.jpg"),
   birthday: "1937/6/1", country_id: 1, description: "With an authoritative voice and calm
demeanor, this ever popular American actor has grown into one of the most respected figures in
modern US cinema. Morgan was born on June 1, 1937 in Memphis, Tennessee, to Mayme Edna (Revere),
a teacher, and Morgan Porterfield Freeman, a barber. The young Freeman attended Los Angeles
City College before serving several years in the US Air Force as a mechanic between 1955 and
1959. His first dramatic arts exposure was on the stage including appearing in an all-African
American production of the exuberant musical Hello, Dolly!."},
  {name: "Bill Skarsgård", avatar_image: File.open(Rails.root + "public/uploads/image/actor-18.jpg"),
   birthday: "1990/8/9", country_id: 7, description: "Bill Skarsgård was born on August 9, 1990
in Vällingby, Sweden as Bill Istvan Günther Skarsgård. He is an actor, known for It (2017),
I rymden finns inga känslor (2010) and Atomic Blonde (2017)."},
  {name: "Jaeden Lieberher", avatar_image: File.open(Rails.root + "public/uploads/image/actor-19.jpg"),
   birthday: "2003/1/4", country_id: 1, description: "Jaeden Lieberher was born in Philadelphia,
Pennsylvania, to Angela Martell and Wes Lieberher, an executive chef. In 2011, at the age of
eight, he moved with his mother across the country to Los Angeles. He never expected that this
adventure would lead him into a life of acting. Without any acting classes or training and
shortly after arriving in Los Angeles, Jaeden began starring in a number of commercials. At the
age of nine he made his big screen debut with a small role playing a young Chris Evans in \"Playing
it Cool\" directed by Justin Reardon. In the summer of 2013 Jaeden made his way back to the
East coast to film St. Vincent (2014), written and directed by Ted Melfi in New York. He was
lucky enough to star in the film with legendary actors Bill Murray, Melissa McCarthy, and Naomi
Watts. While filming in New York he flew back to California to meet Cameron Crowe, and booked
his third movie to be shot in Hawaii. In the Hawaiian project, he shoots opposite Bradley
Cooper, Rachel McAdams, and Emma Stone. In early 2014, he filmed Midnight Special (2016),
written and directed by Jeff Nichols. He plays a boy with special powers who is on the run
with his father (Michael Shannon)."},
  {name: "Robert Downey Jr.", avatar_image: File.open(Rails.root + "public/uploads/image/actor-20.jpg"),
   birthday: "1965/4/4", country_id: 1, description: "Downey was born April 4, 1965 in Manhattan,
New York, the son of writer, director and filmographer Robert Downey Sr. and actress Elsie Downey
(née Elsie Ann Ford). Robert's father is of half Lithuanian Jewish, one quarter Hungarian
Jewish, and one quarter Irish, descent, while Robert's mother was of English, Scottish, German,
and Swiss-German ancestry. Robert and his sister, Allyson Downey, were immersed in film and the
performing arts from a very young age, leading Downey Jr. to study at the Stagedoor Manor
Performing Arts Training Center in upstate New York, before moving to California with his father
following his parents' 1978 divorce. In 1982, he dropped out of Santa Monica High School to
pursue acting full time. Downey Sr., himself a drug addict, exposed his son to drugs at a very
early age, and Downey Jr. would go on to struggle with abuse for decades."},
  {name: "Colin Firth", avatar_image: File.open(Rails.root + "public/uploads/image/actor-21.jpg"),
   birthday: "1960/9/10", country_id: 2, description: "Firth's first acting experience came in infant's 
school when he played \"Jack Frost\" in a Christmas pantomime. Three of his four grandparents
were Methodist missionaries and he spent his early childhood in Nigeria, returning to England
at age five where he entered a comprehensive school in Winchester. He spent two years at the
Drama Centre London in Chalk Farm where he was discovered while playing \"Hamlet\" during
his final term. His first professional role was as \"Bennet\" in the West End production of \"Another
Country\". From this performance, he was chosen to play the character of \"Judd\" in the movie of
the play. He went on to play a variety of character parts in both film and television. For his portrayal
of \"Robert Lawrence\" in the 1989 TV production Tumbledown (1988), he received the Royal Television
Society Best Actor award and also a BAFTA nomination. He also received a BAFTA nomination for
\"Mr. Darcy\" in the 1995 TV version of Pride and Prejudice (1995). In 2011, he won the Oscar for
Best Actor for his commanding leading role, playing British King George VI in The King's Speech (2010)."},
  {name: "Taron Egerton", avatar_image: File.open(Rails.root + "public/uploads/image/actor-22.jpg"),
   birthday: "1989/10/10", country_id: 2, description: "Taron Egerton was born on November 10, 
1989 in Birkenhead, Cheshire, England as Taron David Egerton. He is an actor, known for
Kingsman: The Golden Circle (2017), Kingsman: The Secret Service (2014) and Sing (2016)."},
  {name: "Ryan Gosling", avatar_image: File.open(Rails.root + "public/uploads/image/actor-23.jpg"),
   birthday: "1982/12/10", country_id: 1, description: "Canadian actor Ryan Gosling is the first person 
born in the 1980s to have been nominated for the Best Actor Oscar (for Half Nelson (2006)).<br><br>
He was born Ryan Thomas Gosling on November 12, 1980, in London, Ontario, Canada. He is the
son of Donna (Wilson), a secretary, and Thomas Ray Gosling, a traveling salesman. Ryan was the
second of their two children, with an older sister, Mandi. His ancestry is French-Canadian, as well as
English, Scottish, and German. The Gosling family moved to Cornwall, Ontario, where Ryan grew up
and was home-schooled by his mother and also attended Gladstone Public School. Ryan attended
Cornwall Collegiate and Vocational High School in Cornwall, where he excelled in Drama and Fine Arts.
The family then relocated to Burlington, Ontario, where Ryan attended Lester B. Pearson High School."},
  {name: "Harrison Ford", avatar_image: File.open(Rails.root + "public/uploads/image/actor-24.jpg"),
   birthday: "1942/7/13", country_id: 4, description: "Harrison Ford was born on July 13, 1942 in 
Chicago, Illinois, to Dorothy (Nidelman), a radio actress, and Christopher Ford (born John William Ford),
an actor turned advertising executive. His father was of Irish and German ancestry, while his
maternal grandparents were Jewish immigrants from Minsk, Belarus. Harrison was a lackluster
student at Maine Township High School East in Park Ridge Illinois (no athletic star, never above a
C average). After dropping out of Ripon College in Wisconsin, where he did some acting and later
summer stock, he signed a Hollywood contract with Columbia and later Universal. His roles in movies
and television (Ironside (1967), The Virginian (1962)) remained secondary and, discouraged, he
turned to a career in professional carpentry. He came back big four years later, however, as Bob Falfa
in American Graffiti (1973). Four years after that, he hit colossal with the role of Han Solo in Star Wars
(1977). Another four years and Ford was Indiana Jones in Raiders of the Lost Ark (1981)."},
  {name: "James McAvoy", avatar_image: File.open(Rails.root + "public/uploads/image/actor-25.jpg"),
   birthday: "1979/4/21", country_id: 2, description: "McAvoy was born on 21 April 1979 in Glasgow, 
Scotland, to Elizabeth (née Johnstone), a nurse, and James McAvoy senior, a bus driver. He was
raised on a housing estate in Drumchapel, Glasgow by his maternal grandparents (James, a butcher,
and Mary), after his parents divorced when James was 7. He went to St Thomas Aquinas Secondary
in Jordanhill, Glasgow, where he did well enough and started 'a little school band with a couple of mates'.<br><br>
McAvoy toyed with the idea of the Catholic priesthood as a child but, when he was 16, a visit to the
school by actor David Hayman sparked an interest in acting. Hayman offered him a part in his film
The Near Room (1995) but despite enjoying the experience McAvoy didn't seriously consider acting
as a career, although he did continue to act as a member of PACE Youth Theatre. He applied instead
to the Royal Navy and had already been accepted when he was also offered a place at the Royal
Scottish Academy of Music and Drama (RSAMD)."},
  {name: "Ansel Elgort", avatar_image: File.open(Rails.root + "public/uploads/image/actor-26.jpg"),
   birthday: "1994/3/14", country_id: 1, description: "Ansel was born in New York City to photographer 
Arthur Elgort and opera director Grethe Barrett Holby. His father is of Jewish-Russian heritage, while
his mother has Norwegian and British Isles ancestry.<br><br>
As a child, Ansel tried out for the School of American Ballet, and attended Stagedoor Manor
summer camp and Fiorello H. LaGuardia High School. He began his professional acting career on
stage, appearing in Matt Charman's play \"Regrets\", which was performed off-Broadway. Ansel
made his film debut in the horror remake Carrie (2013), and co-starred with Shailene Woodley
in both the science-fiction tale Divergent (2014) (playing her character's brother) and the romantic
drama The Fault in Our Stars (2014) (playing male lead Augustus Waters, who is Woodley's
character's love interest). The film was based on the book by 'John Green' (XII). Ansel also had a
role in Jason Reitman's drama film Men, Women & Children (2014), and returned for the sequels
to Divergent, Insurgent (2015) and Allegiant (2016). He had a cameo in Paper Towns (2015), also
based on a teen drama book by author Green."},
  {name: "Allison Williams", avatar_image: File.open(Rails.root + "public/uploads/image/actor-27.jpg"),
   birthday: "1988/4/13", country_id: 1, description: "Allison Williams, born April 13, 1988, is an 
American actress, comedian, and singer. She is best known for her role as \"Marnie Michaels\" on
the HBO comedy-drama series, Girls (2012). Williams was born and raised in New Canaan,
Connecticut, and is the daughter of former NBC Nightly News anchor and managing editor,
Brian Williams, and Jane Gillan Stoddard, a TV producer. She graduated from Yale University in 2010."},
  {name: "Christopher Lee", avatar_image: File.open(Rails.root + "public/uploads/image/actor-28.jpg"),
    birthday: "1922/5/27", country_id: 2, description: "Sir Christopher Frank Carandini Lee was perhaps the only actor of his generation to have starred in so many films and cult saga. Although most notable for personifying bloodsucking vampire, Dracula, on screen, he portrayed other varied characters on screen, most of which were villains, whether it be Francisco Scaramanga in the James Bond film, The Man with the Golden Gun (1974), or Count Dooku in Star Wars: Episode II - Attack of the Clones (2002), or as the title monster in the Hammer Horror film, The Mummy (1959)."},
  {name: "Ian McKellen", avatar_image: File.open(Rails.root + "public/uploads/image/actor-29.jpg"),
  birthday: "1939/5/25", country_id: 2, description: "Sir Ian Murray McKellen, CH, CBE (born 25 May 1939) is an English actor. He is the recipient of six Laurence Olivier Awards, a Tony Award, a Golden Globe Award, a Screen Actors Guild Award, a BIF Award, two Saturn Awards, four Drama Desk Awards, and two Critics' Choice Awards. He has also received two Oscar nominations, four BAFTA nominations and five Emmy Award nominations.
McKellen's career spans genres ranging from Shakespearean and modern theatre to popular fantasy and science fiction. The BBC states his \"performances have guaranteed him a place in the canon of English stage and film actors\".[2][3] A recipient of every major theatrical award in the UK, McKellen is regarded as a British cultural icon.[4][5] He started his professional career in 1961 at the Belgrade Theatre as a member of their highly regarded repertory company. In 1965 McKellen made his first West End appearance. In 1969 he was invited to join the Prospect Theatre Company to play the lead parts in Shakespeare's Richard II and Marlowe's Edward II, and he firmly established himself as one of the country's foremost classical actors. In the 1970s McKellen became a stalwart of the Royal Shakespeare Company and the National Theatre of Great Britain. He achieved worldwide fame for his notable film roles, which include Gandalf in The Lord of the Rings and The Hobbit trilogies and Magneto in the X-Men films, both of which introduced McKellen to a new generation.
McKellen was appointed Commander of the Order of the British Empire in the 1979 Birthday Honours, was knighted in the 1991 New Year Honours for services to the performing arts, and made a Companion of Honour for services to drama and to equality in the 2008 New Year Honours.He has been openly gay since 1988, and continues to be a champion for LGBT social movements worldwide. He was made a Freeman of the City of London in October 2014."},
   {name: "Al Pacino", avatar_image: File.open(Rails.root + "public/uploads/image/actor-30.jpg"),
  birthday: "1940/4/25", country_id: 1, description: "Alfredo James Pacino (/pəˈtʃiːnoʊ/; born April 25, 1940) is an American actor of stage and screen, filmmaker, and screenwriter. Pacino has had a career spanning over five decades, during which time he has received numerous accolades and honors both competitive and honorary, among them an Academy Award, two Tony Awards, two Primetime Emmy Awards, a British Academy Film Award, four Golden Globe Awards, the Lifetime Achievement Award from the American Film Institute, the Golden Globe Cecil B. DeMille Award, and the National Medal of Arts. He is also one of few performers to have won a competitive Oscar, an Emmy and a Tony Award for acting, dubbed the \"Triple Crown of Acting\".
A method actor and former student of the HB Studio and the Actors Studio in New York City, where he was taught by Charlie Laughton and Lee Strasberg,[1] Pacino made his feature film debut with a minor role in Me, Natalie (1969) and gained favorable notices for his lead role as a heroin addict in The Panic in Needle Park (1971). He achieved international acclaim and recognition for his breakthrough role as Michael Corleone in Francis Ford Coppola's The Godfather (1972). He received his first Oscar nomination and would reprise the role in the equally successful sequels The Godfather Part II (1974) and The Godfather Part III (1990). Pacino's performance as Michael Corleone is now regarded as one of the greatest screen performances in film history.
Pacino received his first Best Actor Oscar nomination for Serpico (1973); he was also nominated for The Godfather Part II, Dog Day Afternoon (1975) and ...And Justice for All (1979) and won the award in 1993 for his performance as a blind Lieutenant Colonel in Scent of a Woman (1992). For his performances in The Godfather, Dick Tracy (1990) and Glengarry Glen Ross (1992), Pacino was nominated for the Academy Award for Best Supporting Actor. Other notable roles include Tony Montana in Scarface (1983), Carlito Brigante in Carlito's Way (1993), Lieutenant Vincent Hanna in Heat (1995), Benjamin Ruggiero in Donnie Brasco (1997), Lowell Bergman in The Insider (1999) and Detective Will Dormer in Insomnia (2002). In television, Pacino has acted in several productions for HBO including the miniseries Angels in America (2003) and the Jack Kevorkian biopic You Don't Know Jack (2010), both of which won him the Primetime Emmy Award for Outstanding Lead Actor in a Miniseries or a Movie.
In addition to his work in film, Pacino has had an extensive career on stage and is a two-time Tony Award winner, in 1969 and 1977, for his performances in Does a Tiger Wear a Necktie? and The Basic Training of Pavlo Hummel respectively. A lifelong fan of Shakespeare, Pacino directed and starred in Looking for Richard (1996), a documentary film about the play Richard III, a role which Pacino had earlier portrayed on-stage in 1977. He has also acted as Shylock in a 2004 feature film adaptation and a 2010 production of The Merchant of Venice. Having made his filmmaking debut with Looking for Richard, Pacino has also directed and starred in the independent film Chinese Coffee (2000) and the films Wilde Salomé (2011) and Salomé (2013), about the play Salomé by Oscar Wilde. Since 1994, Pacino has been the joint president of the Actors Studio with Ellen Burstyn and Harvey Keitel."},
   {name: "James Caan", avatar_image: File.open(Rails.root + "public/uploads/image/actor-31.jpg"),
  birthday: "1940/3/26", country_id: 1, description: "James Edmund Caan (born March 26, 1940) is an American actor. After early roles in The Glory Guys (1965), for which he received a Golden Globe nomination, El Dorado (1966), and The Rain People (1969), he came to prominence in the 1970s with significant roles in films such as Brian's Song (1971), Cinderella Liberty (1973), The Gambler (1974), Freebie and the Bean (1974), Rollerball (1975), Funny Lady (1975), A Bridge Too Far (1977), 1941 (1979), and Chapter Two (1979). For his signature role in The Godfather (1972), that of hot-tempered Sonny Corleone, Caan was nominated for the Academy Award for Best Supporting Actor and the corresponding Golden Globe.
Caan's subsequent notable performances include roles in Thief (1981), Misery (1990), For the Boys (1991), Eraser (1996), Bottle Rocket (1996) and Elf (2003), as well as the role of \"Big Ed\" Deline in the television series Las Vegas (2003–08). He also prominently lent his voice to Cloudy with a Chance of Meatballs (2009) and Cloudy with a Chance of Meatballs 2 (2013) as Tim Lockwood, father of Bill Hader's protagonist Flint Lockwood."},
   {name: "Will Smith", avatar_image: File.open(Rails.root + "public/uploads/image/actor-32.jpg"),
  birthday: "1968/9/25", country_id: 1, description: "Willard Carroll \"Will\" Smith Jr. (born September 25, 1968) is an American actor, producer, rapper, comedian, and songwriter. In April 2007, Newsweek called him \"the most powerful actor in Hollywood\". Smith has been nominated for five Golden Globe Awards and two Academy Awards, and has won four Grammy Awards.
In the late 1980s, Smith achieved modest fame as a rapper under the name The Fresh Prince. In 1990, his popularity increased dramatically when he starred in the popular NBC television series The Fresh Prince of Bel-Air, which ran for six seasons until 1996. After the series ended, Smith transitioned from television to film, and has gone on to star in numerous blockbuster films. He is the only actor to have eight consecutive films gross over $100 million in the domestic box office, eleven consecutive films gross over $150 million internationally, and eight consecutive films in which he starred, open at the number one spot in the domestic box office tally.
Smith has been ranked as the most bankable star worldwide by Forbes.As of 2014, 17 of the 21 films in which he has had leading roles have accumulated worldwide gross earnings of over $100 million each, five taking in over $500 million each in global box office receipts. As of 2016, his films have grossed $7.5 billion at the global box office. For his performances as boxer Muhammad Ali in Ali (2001) and stockbroker Chris Gardner in The Pursuit of Happyness (2006), Smith received nominations for the Academy Award for Best Actor.[7]"},
   {name: "Brad Pitt", avatar_image: File.open(Rails.root + "public/uploads/image/actor-33.jpg"),
  birthday: "1963/9/18", country_id: 1, description: "William Bradley Pitt (born December 18, 1963) is an American actor and producer. He has received multiple awards and nominations including an Academy Award as producer under his own company Plan B Entertainment.
Pitt first gained recognition as a cowboy hitchhiker in the road movie Thelma & Louise (1991). His first leading roles in big-budget productions came with the drama films A River Runs Through It (1992) and Legends of the Fall (1994), and horror film Interview with the Vampire (1994). He gave critically acclaimed performances in the crime thriller Seven and the science fiction film 12 Monkeys (both 1995), the latter earning him a Golden Globe Award for Best Supporting Actor and an Academy Award nomination. Pitt starred in the cult film Fight Club (1999) and the heist film Ocean's Eleven (2001) and its sequels, Ocean's Twelve (2004) and Ocean's Thirteen (2007). His greatest commercial successes have been Troy (2004), Mr. & Mrs. Smith (2005), and World War Z (2013). Pitt received his second and third Academy Award nominations for his leading performances in The Curious Case of Benjamin Button (2008) and Moneyball (2011). He produced The Departed (2006) and 12 Years a Slave (2013), both of which won the Academy Award for Best Picture, and also The Tree of Life, Moneyball, and The Big Short (2015), all of which garnered Best Picture nominations.
As a public figure, Pitt has been cited as one of the most influential and powerful people in the American entertainment industry. For a number of years, he was cited as the world's most attractive man by various media outlets, and his personal life is the subject of wide publicity. Divorced from actress Jennifer Aniston after five years of marriage, he married actress Angelina Jolie in 2014. They have six children together, three of whom were adopted internationally. In 2016, Jolie filed for a divorce from Pitt, which is currently pending."},
   {name: "Matt Damon", avatar_image: File.open(Rails.root + "public/uploads/image/actor-34.jpg"),
  birthday: "1970/9/8", country_id: 1, description: "Matthew Paige Damon (/ˈdeɪmən/; born October 8, 1970)[2] is an American actor, film producer, philanthropist and screenwriter. He is ranked among Forbes magazine's most bankable stars[3] and is one of the highest-grossing actors of all time.[4][nb 1] Damon has received various accolades, including an Academy Award from five nominations, two Golden Globe Awards from eight nominations, and has been nominated for two British Academy Film Awards and six Emmy Awards.
Born and raised in Cambridge, Massachusetts, Damon began his acting career by appearing in high school theater productions and he made his professional acting debut in the film Mystic Pizza (1988). He came to prominence in 1997 when he wrote and starred in Good Will Hunting alongside Ben Affleck, which won them the Academy and Golden Globe awards for Best Screenplay, and earned Damon a nomination for the Academy Award for Best Actor. He continued to garner praise from critics for his roles as the eponymous character in Saving Private Ryan (1998), the antihero in The Talented Mr. Ripley (1999), a fallen angel in Dogma (1999), an energy analyst in Syriana (2005), and a corrupt Irish-American police officer in The Departed (2006).
Damon is also known for his starring roles as Jason Bourne in the Bourne franchise (2002–16) and as a con man in the Ocean's Trilogy (2001–07). For his supporting role as the rugby player Francois Pienaar in Invictus (2009) and his leading role as an astronaut stranded on Mars in The Martian (2015), Damon received Oscar nominations for Best Supporting Actor and Best Actor, respectively. The latter also won him a Golden Globe Award for Best Actor. Damon has received Emmy Award nominations for his portrayal of Scott Thorson in the biopic Behind the Candelabra (2013) and for producing the reality series Project Greenlight. He also received an Oscar nomination for producing Manchester by the Sea (2016).
In addition to acting in films, Damon has performed voice-over work in both animated and documentary films and has established two production companies with Affleck. He has been involved in charitable work, including the ONE Campaign, H2O Africa Foundation, Feeding America, and Water.org. Damon is married to Luciana Bozán Barroso, and they have three daughters together."},
   {name: "Jeremy Renner", avatar_image: File.open(Rails.root + "public/uploads/image/actor-35.jpg"),
  birthday: "1971/1/7", country_id: 1, description: "Renner's depiction of Jeffrey Dahmer in 2002 caught the attention of director Kathryn Bigelow, and, in 2008, she cast him in his most famous role as Sergeant First Class William James in The Hurt Locker (2008). Renner's performance as a single-minded bomb specialist scored him an Academy Award nomination for best actor. He also earned best actor nominations from the Independent Spirit Awards, the Screen Actors Guild, and the BAFTA Awards, as well as wins in this category from several film critics groups.<br>
In 2009, Renner starred in the short-lived TV series, The Unusuals (2009), and in 2010 he played the chilling but loyal criminal Jem in Ben Affleck bank-heist thriller The Town (2010). In the fall of 2010, Renner began filming Mission: Impossible - Ghost Protocol (2011). He has also since starred in The Avengers (2012), American Hustle (2013), and Kill the Messenger (2014)."},
  {name: "Tom Cruise", avatar_image: File.open(Rails.root + "public/uploads/image/actor-36.jpg"),
   birthday: "1962/7/3", country_id: 1, description: "Tom Cruise was starring in some of the top 
grossing films of the 1980s including Top Gun (1986); The Color of Money (1986), Rain Man (1988)
and Born on the Fourth of July (1989). By the 1990s he was one of the highest paid actors in
the world earning an average 15 million dollars a picture in such blockbuster hits as Interview
with the Vampire: The Vampire Chronicles (1994), Mission: Impossible (1996) and Jerry Maguire
(1996) for which he received an Academy Award Nomination for best actor. In 1990 he renounced
his devout Catholic beliefs and embraced The Church Of Scientology claiming that Scientology
teachings had cured him of the dyslexia that had plagued him all of his life. A kind and
thoughtful man well known for his compassion and generosity, Tom Cruise is one of the best
liked members of the movie community. He was married to actress Nicole Kidman until 2001.
Thomas Cruise Mapother IV has indeed come a long way from the lonely wanderings of his youth."},
  {name: "Andrew Garfield", avatar_image: File.open(Rails.root + "public/uploads/image/actor-37.jpg"),
   birthday: "1983/08/20", country_id: 1, description: "His first professional roles were on the stage and in 2005 he made his TV debut in the Channel 4 teen series Sugar Rush (2005) in the UK. More TV work followed (reaching a wider UK audience in a two-part story in the third season of Bac Si Vo Danh (2005)), as well as a number of movie appearances. Garfield played Eduardo in The Social Network (2010) and Tommy in Never Let Me Go (2010), two films that brought him to full international attention. That same year, he was cast as the title character in the reboot of the Spider-Man film franchise, The Amazing Spider-Man (2012). He reprised the role in the sequel, The Amazing Spider-Man 2 (2014), before passing off the torch to Tom Holland."},
  {name: "Chris Hemsworth", avatar_image: File.open(Rails.root + "public/uploads/image/actor-38.jpg"),
   birthday: "1983/08/11", country_id: 6, description: "Chris saw quite a bit of the country in his youth, after his family moved to the Northern Territory before finally settling on Phillip Island, to the south of Melbourne. In 2004, he unsuccessfully auditioned for the role of Robbie Hunter in the Australian soap opera Home and Away (1988) but was recalled for the role of Kim Hyde which he played until 2007. In 2006, he entered the Australian version of Dancing with the Stars (2004) and his popularity in the soap enabled him to hang on until show 7 (Dancing with the Stars: Episode #5.7 (2006) when he became the fifth contestant to be eliminated.<br>
His first Hollywood appearance was in Star Trek (2009), but it was his titular role in Than Sam Thor (2011) which propelled him to prominence worldwide. He reprised the character in the science fiction blockbuster The Avengers (2012)."},
  {name: "Tom Hiddleston", avatar_image: File.open(Rails.root + "public/uploads/image/actor-39.jpg"),
   birthday: "1981/2/9", country_id: 2, description: "Whilst at University of Cambridge, he was seen by the agency 'Hamilton Hodell' in the play \"A Streetcar Named Desire\" and was signed. Following this, he was cast in his first television role in The Life and Adventures of Nicholas Nickleby (2001). Hiddleston won his first film role as Oakley in Joanna Hogg's award-winning first feature, Unrelated (2007). His breakthrough role came when he portrayed the nemesis Loki in the Marvel Cinematic Universe feature film Than Sam Thor (2011). He reprised the character in Siêu Anh Hùng Báo Thù (2012), Thor: The Dark World (2013), Thor: Ragnarok (2017) and Avengers: Infinity War (2018).<br>
He has also appeared in Steven Spielberg's War Horse (2011), The Deep Blue Sea (2011), Woody Allen's romantic comedy Midnight in Paris (2011), and the romantic vampire film Only Lovers Left Alive (2013)."},
  {name: "Gal Gadot", avatar_image: File.open(Rails.root + "public/uploads/image/actor-40.jpg"),
   birthday: "1985/4/30", country_id: 1, description: "Gal began modeling in the late 2000s, and made her film debut in the fourth film of the Fast and Furious franchise, Fast & Furious (2009), as Gisele. Her role was expanded in the sequels Fast Five (2011) and Fast & Furious 6 (2013), in which her character was romantically linked to Han Seoul-Oh (Sung Kang). In the films, Gal performed her own stunts. She also appeared in the 2010 films Date Night (2010) and Knight and Day (2010).<br>
In early December 2013, Gal was cast as Wonder Woman in the superhero team-up film Batman v Superman: Dawn of Justice (2016), and filming began in 2014 for a March 2016 release. Gadot received swordsmanship, Kung Fu kickboxing, Capoeira and Brazilian Jiu-Jitsu training in preparation for the role."},
  {name: "Ben Affleck", avatar_image: File.open(Rails.root + "public/uploads/image/actor-41.jpg"),
   birthday: "1972/8/15", country_id: 1, description: " In the several years following, he played supporting roles, including in the films Smokin' Aces (2006), He's Just Not That Into You (2009), State of Play (2009), and Extract (2009). He ventured into directing in 2007, with the thriller Gone Baby Gone (2007), which starred his brother, Casey Affleck, and was well received. He then directed, co-wrote, and starred in The Town (2010), which was named to the National Board of Review Top Ten Films of the year. For the political thriller Argo (2012), which he directed and starred in, Affleck won the Golden Globe Award and BAFTA Award for Best Director, and the Academy Award, Golden Globe Award, and BAFTA Award for Best Picture (Affleck's second Oscar win).<br>
In 2014, Affleck headlined the book adaptation thriller Gone Girl (2014). He starred as Bruce Wayne/Batman in the superhero film Batman v Superman: Dawn of Justice (2016), briefly reprised the character in Suicide Squad (2016), and will do so again in Justice League (2017), and other sequels."},
  {name: "Josh Brolin", avatar_image: File.open(Rails.root + "public/uploads/image/actor-42.jpg"),
   birthday: "1968/2/12", country_id: 1, description: "After The Young Riders (1989), Brolin moved back to the big screen, with mediocre success. He played a supporting role in The Road Killers (1994), but the film was not a success. He followed up with the crime film Gang in Blue (1996), the romantic film Bed of Roses (1996), the thriller film Nightwatch (1997), and appeared with his father in My Brother's War (1997). However, nothing truly stuck out, especially not the box office flop The Mod Squad (1999). The 2000s initially brought no significant change in Brolin's career. He appeared in the independent film Slow Burn (2000), the sci-if thriller Hollow Man (2000) and starred on the television series Mister Sterling (2003). In 2004, he married actress Diane Lane and are still together."},
  {name: "Willem Dafoe", avatar_image: File.open(Rails.root + "public/uploads/image/actor-43.jpg"),
   birthday: "1955/7/22", country_id: 1, description: "Among other nominations and awards, he received an LA Film Critics Award and an Independent Spirit Award. Upcoming films include Wes Anderson's The Grand Budapest Hotel (2014), Anton Corbjin's A Most Wanted Man (2014), Lars von Trier's Nymphomaniac: Vol. I (2013), Scott Cooper's Out of the Furnace (2013), Josh Boone's The Fault In Our Stars (2014)_, David Leitch and Chad Stahelski's John Wick (2014)_, and Chris Brinker's Bad Country (2014). Dafoe is one of the founding members of The Wooster Group, the New York based experimental theatre collective. He created and performed in all of the group's work from 1977 thru 2005, both in the U.S. and internationally."} 
])

MovieActor.create!([
  {movie_id: 7, actor_id: 1},
  {movie_id: 8, actor_id: 2},
  {movie_id: 11, actor_id: 3},
  {movie_id: 3, actor_id: 3},
  {movie_id: 6, actor_id: 4},
  {movie_id: 12, actor_id: 5},
  {movie_id: 12, actor_id: 6},
  {movie_id: 13, actor_id: 7},
  {movie_id: 13, actor_id: 20},
  {movie_id: 16, actor_id: 8},
  {movie_id: 17, actor_id: 9},
  {movie_id: 18, actor_id: 10},
  {movie_id: 20, actor_id: 11},
  {movie_id: 2, actor_id: 12},
  {movie_id: 2, actor_id: 13},
  {movie_id: 1, actor_id: 14},
  {movie_id: 1, actor_id: 15},
  {movie_id: 4, actor_id: 16},
  {movie_id: 4, actor_id: 17},
  {movie_id: 5, actor_id: 18},
  {movie_id: 5, actor_id: 19},
  {movie_id: 19, actor_id: 21},
  {movie_id: 19, actor_id: 22},
  {movie_id: 21, actor_id: 23},
  {movie_id: 21, actor_id: 24},
  {movie_id: 14, actor_id: 23},
  {movie_id: 22, actor_id: 25},
  {movie_id: 23, actor_id: 26},
  {movie_id: 24, actor_id: 27},
  {movie_id: 26, actor_id: 35},
  {movie_id: 26, actor_id: 36},
  {movie_id: 28, actor_id: 37},
  {movie_id: 31, actor_id: 10},
  {movie_id: 32, actor_id: 38},
  {movie_id: 32, actor_id: 39},
  {movie_id: 36, actor_id: 40},
  {movie_id: 36, actor_id: 41},
  {movie_id: 15, actor_id: 41},
  {movie_id: 30, actor_id: 43},
  {movie_id: 34, actor_id: 8},
])

Type.create!([
  {name: "Drama",
   avatar: File.open(Rails.root + "public/uploads/image/drama-genre.jpg")},
  {name: "Family",
   avatar: File.open(Rails.root + "public/uploads/image/family.jpg")},
  {name: "Crime",
   avatar: File.open(Rails.root + "public/uploads/image/crime-genre.jpg")},
  {name: "Thriller",
   avatar: File.open(Rails.root + "public/uploads/image/thriller-genre.jpg")},
  {name: "Action",
   avatar: File.open(Rails.root + "public/uploads/image/action.jpg")},
  {name: "Fantasy",
   avatar: File.open(Rails.root + "public/uploads/image/fantasy-genre.jpg")},
  {name: "Animation",
   avatar: File.open(Rails.root + "public/uploads/image/animation.png")},
  {name: "Horror",
   avatar: File.open(Rails.root + "public/uploads/image/horror.jpg")},
  {name: "Documentary",
   avatar: File.open(Rails.root + "public/uploads/image/documentary-genre.jpg")},
  {name: "Biography",
   avatar: File.open(Rails.root + "public/uploads/image/biopics-genre.jpg")},
  {name: "Romance",
   avatar: File.open(Rails.root + "public/uploads/image/romance-genre.jpg")},
  {name: "Comedy",
   avatar: File.open(Rails.root + "public/uploads/image/comedy-genre.jpg")},
  {name: "Mystery",
   avatar: File.open(Rails.root + "public/uploads/image/detective-genre.jpg")},
  {name: "Adventure",
   avatar: File.open(Rails.root + "public/uploads/image/adventure-genre.jpg")},
  {name: "Sci-Fi",
   avatar: File.open(Rails.root + "public/uploads/image/scifi-genre.jpg")},
  {name: "History",
   avatar: File.open(Rails.root + "public/uploads/image/epics-genre.jpg")},
  {name: "Musical",
   avatar: File.open(Rails.root + "public/uploads/image/musicals-genre.jpg")},
  {name: "War",
   avatar: File.open(Rails.root + "public/uploads/image/war-genre.jpg")},
  {name: "Western",
   avatar: File.open(Rails.root + "public/uploads/image/westerns-genre.jpg")},
  {name: "Sport",
   avatar: File.open(Rails.root + "public/uploads/image/sports-genre.jpg")},
])

MovieType.create!([
  {movie_id: 1, type_id: 5},
  {movie_id: 1, type_id: 6},
  {movie_id: 1, type_id: 14},
  {movie_id: 2, type_id: 1},
  {movie_id: 2, type_id: 6},
  {movie_id: 2, type_id: 14},
  {movie_id: 3, type_id: 7},
  {movie_id: 3, type_id: 6},
  {movie_id: 4, type_id: 1},
  {movie_id: 4, type_id: 3},
  {movie_id: 5, type_id: 1},
  {movie_id: 5, type_id: 4},
  {movie_id: 5, type_id: 8},
  {movie_id: 6, type_id: 1},
  {movie_id: 6, type_id: 11},
  {movie_id: 6, type_id: 12},
  {movie_id: 12, type_id: 3},
  {movie_id: 12, type_id: 4},
  {movie_id: 12, type_id: 5},
  {movie_id: 12, type_id: 1},
  {movie_id: 7, type_id: 5},
  {movie_id: 7, type_id: 14},
  {movie_id: 7, type_id: 15},
  {movie_id: 8, type_id: 5},
  {movie_id: 8, type_id: 14},
  {movie_id: 9, type_id: 5},
  {movie_id: 9, type_id: 7},
  {movie_id: 9, type_id: 14},
  {movie_id: 10, type_id: 7},
  {movie_id: 10, type_id: 12},
  {movie_id: 10, type_id: 14},
  {movie_id: 10, type_id: 3},
  {movie_id: 10, type_id: 2},
  {movie_id: 10, type_id: 13},
  {movie_id: 11, type_id: 7},
  {movie_id: 11, type_id: 1},
  {movie_id: 11, type_id: 6},
  {movie_id: 13, type_id: 5},
  {movie_id: 13, type_id: 12},
  {movie_id: 13, type_id: 14},
  {movie_id: 14, type_id: 5},
  {movie_id: 14, type_id: 12},
  {movie_id: 14, type_id: 14},
  {movie_id: 14, type_id: 11},
  {movie_id: 14, type_id: 15},
  {movie_id: 15, type_id: 1},
  {movie_id: 15, type_id: 3},
  {movie_id: 15, type_id: 4},
  {movie_id: 15, type_id: 13},
  {movie_id: 16, type_id: 5},
  {movie_id: 16, type_id: 14},
  {movie_id: 16, type_id: 6},
  {movie_id: 17, type_id: 6},
  {movie_id: 17, type_id: 14},
  {movie_id: 17, type_id: 2},
  {movie_id: 18, type_id: 10},
  {movie_id: 18, type_id: 1},
  {movie_id: 18, type_id: 4},
  {movie_id: 18, type_id: 18},
  {movie_id: 19, type_id: 5},
  {movie_id: 19, type_id: 12},
  {movie_id: 19, type_id: 14},
  {movie_id: 20, type_id: 4},
  {movie_id: 20, type_id: 5},
  {movie_id: 21, type_id: 4},
  {movie_id: 21, type_id: 15},
  {movie_id: 21, type_id: 13},
  {movie_id: 22, type_id: 4},
  {movie_id: 22, type_id: 8},
  {movie_id: 23, type_id: 4},
  {movie_id: 23, type_id: 3},
  {movie_id: 23, type_id: 5},
  {movie_id: 23, type_id: 17},
  {movie_id: 24, type_id: 8},
  {movie_id: 24, type_id: 13},
  {movie_id: 25, type_id: 4},
  {movie_id: 25, type_id: 5},
  {movie_id: 25, type_id: 12},
  {movie_id: 26, type_id: 4},
  {movie_id: 26, type_id: 5},
  {movie_id: 26, type_id: 14},
  {movie_id: 27, type_id: 7},
  {movie_id: 27, type_id: 6},
  {movie_id: 27, type_id: 12},
  {movie_id: 27, type_id: 14},
  {movie_id: 27, type_id: 17},
  {movie_id: 28, type_id: 1},
  {movie_id: 28, type_id: 10},
  {movie_id: 28, type_id: 11},
  {movie_id: 29, type_id: 12},
  {movie_id: 30, type_id: 1},
  {movie_id: 31, type_id: 5},
  {movie_id: 31, type_id: 14},
  {movie_id: 32, type_id: 15},
  {movie_id: 32, type_id: 5},
  {movie_id: 32, type_id: 14},
  {movie_id: 33, type_id: 1},
  {movie_id: 33, type_id: 10},
  {movie_id: 34, type_id: 3},
  {movie_id: 34, type_id: 1},
  {movie_id: 34, type_id: 13},
  {movie_id: 35, type_id: 9},
  {movie_id: 35, type_id: 6},
  {movie_id: 35, type_id: 5},
  {movie_id: 35, type_id: 14},
  {movie_id: 35, type_id: 15},
  {movie_id: 36, type_id: 5},
  {movie_id: 36, type_id: 14},
  {movie_id: 36, type_id: 6},
  {movie_id: 36, type_id: 15},
  {movie_id: 37, type_id: 4},
  {movie_id: 37, type_id: 3},
  {movie_id: 37, type_id: 13},
  {movie_id: 15, type_id: 15},
  {movie_id: 38, type_id: 1},
  {movie_id: 38, type_id: 14},
  {movie_id: 38, type_id: 6},
  {movie_id: 38, type_id: 11},
  {movie_id: 38, type_id: 4},
  {movie_id: 38, type_id: 8},
  {movie_id: 38, type_id: 18},
])

Review.create!([
  {title: "Why 'Spirited Away' Is the Best Animated Film of All Time",
   content:"There's a quote on Tumblr somewhere that says \"Disney movies touch the heart, 
but Studio Ghibli films touch the soul.\" As sentimental as that is, it's also astute.
It's surely part of the reason that anime fans across the world will testify that Hayao Miyazaki's
Spirited Away is the best animation film of all time. On the 15th anniversary of its release in Japan,
Sen to Chihiro no Kamikakushi—translated as \"Sen and Chihiro's Spiriting Away\"—remains untouched
by rivals for its blend of the spiritual, the realistic, the fantastic, and the human. For balancing all of those
realms, Miyazaki was the master, and since his retirement, we'll continue to look on Spirited Away as
the film that was the masterpiece of his life.
<br><br>At its most basic, the film follows a little girl, Chihiro, on a journey to free her parents.
She has to navigate the spirit world she gets trapped in by working in a bathhouse run by an overlord
called Yu-baaba. Miyazaki said he'd decided to make it based on the ten-year-old daughter of friend, associate
producer Seiji Okuda, who came to stay with him every summer. With this in mind, he made the movie for
ten-year-old girls. This is exactly why it resonates so well with people of all ages and why Chihiro feels so real.
How often can you say a film has been made for young girls, rather than money or mainstream audiences?
<br><br>Many male critics described Chihiro as a \"sullen\" and \"spoiled\" girl, and continue to describe her as such.
This is hardly a fair criticism, nor is it an accurate one. When we meet Chihiro, she's being driven away
rom her home and everything she knows to live in a new town. All she has to remember her friends is a
bouquet. \"The only time I got a bouquet and it's a goodbye present. How depressing,\" she says, only
to be reminded by her mom that her dad bought her one for her birthday. She shrugs this off,
understandably. Few ten-year-olds would behave so well given the upheaval. When the family exit the car,
entranced by the lead up to the abandoned theme park that will soon trap them, Chihiro is whiny because
her intuition is correct. She follows behind her parents, worried by the little shines and the appearance of
the food with no vendor, warning that they shouldn\'t be there.
<br><br>These critics will see that she spends the remainder of the film laboring not only for their
ignorance but also the fact that they ignore the voice of a young girl.
<br><br>What sets her story apart is that Chihiro isn't forced to triumph over great evil and turn from a
sullen creature to a good girl. Far better than that, it's a film about honest development.
Miyazaki shows her slowly forcing herself to adapt to her environment and be open to the tasks ahead,
quietly tackling them as best she can. She has trouble walking down the steps to the boiler man,
Kamaji, but eventually manages to make it down. Kamaji keeps ignoring her, but she knows she must
get a job at the bathhouse to survive in this new spirit world, so doesn't stop until he helps her.
Her careful thinking and determination quickly reward her when she realizes a stinky spirit was actually
a polluted river spirit who needed to be freed from all the junk surrounding it. The fact the film was
made without a script only adds to this natural evolution of Chihiro. \"I don't have the story finished and
ready when we start work on a film,\" Miyazaki once told Midnight Eye. ",
   user_id: 2, movie_id: 3},
  {title: "Embrace the magic",
   content: "Since JRR Tolkien published his mighty head-trip epic in the 1950s, its influence has got 
everywhere in popular culture: in games, the fantasy genre, and for a while of course in music.
Peter Jackson's reverent screen version of Tolkien's first volume, The Fellowship of the Ring resembles
from certain angles nothing so much as a 178-minute electric mandolin solo.
<br><br>Obviously, the stately texts that Tolkien taught at Oxford have crashed further out of fashion
than ever, and Tolkien's own imitations have simply supplanted them in the canon. Do fans of Lord of
the Rings go on to gobble up Le Morte Darthur, Troilus and Criseyde or perhaps Sir Gawain and the
Green Knight in Professor Tolkien's own magisterial 1925 edition? Puh-lease.
<br><br>It is the master's own delirious Wagnerian-Arthurian marathon, beginning here with the winsome
young hobbit Frodo Baggins protecting the ring from the dark Lord of Mordor (pronounced with a
preposterous Olde Welshe type rolling \"r\"), which has become the imitated classic. But only now, after
nearly 50 years, has the first substantial movie version arrived, made possible by advances in CGI and
a new taste, arguably, for politically inflected escapism and good-versus-evil battle fantasy.
<br><br>So here we are, plunged back into that distant, mist-wreathed world, a dark era when no work
of children's fiction was considered properly imaginative unless it had a map of its elaborate made-up
geography just inside the front cover.
<br><br>The Middle Earth that director Peter Jackson has found for his hobbits, dwarves, elves, wizards
and trolls is brilliantly realised, an exotic, hyper-real English countryside, melding with a dramatic
North American landmass: much richer than a Roger Dean album cover. It is the stunning landscape
of the director's own New Zealand which stands in - digitally modified here and there - and, in many ways,
New Zealand itself is the modest star of the film.
<br><br>It is in these swooping, rolling hills and forests that the young hobbit Frodo Baggins inherits the
Ring from his twinkly-eyed kinsman Bilbo (Ian Holm). He joins up with a \"Fellowship\", a species
cross- section of Middle Earth: hobbits, elves, humans, a wizard and a dwarf. They all begin their very
long quest to return it to the forge where it was made, and so permanently destroy its potential for evil. ",
   user_id: 5, movie_id: 2},
  {title: "Shawshank Redeems Hollywood",
   content: "It is a strange comment to make about a film set inside a prison, but \"The Shawshank Redemption\" 
creates a warm hold on our feelings because it makes us a member of a family. Many movies offer us
vicarious experiences and quick, superficial emotions. \"Shawshank\" slows down and looks. It uses the
narrator's calm, observant voice to include us in the story of men who have formed a community behind
bars. It is deeper than most films; about continuity in a lifetime, based on friendship and hope.
<br><br>Interesting that although the hero of the film is the convicted former banker Andy Dufresne
(Tim Robbins), the action is never seen from his point of view. The film's opening scene shows him
being given two life sentences for the murder of his wife and her lover, and then we move,
permanently, to a point of view representing the prison population and particularly the lifer Ellis 'Red'
Redding (Morgan Freeman). It is his voice remembering the first time he saw Andy (\"looked like a stiff
breeze would blow him over\"), and predicting, wrongly, that he wouldn't make it in prison.
<br><br>From Andy's arrival on the prison bus to the film's end, we see only how others see him - Red,
who becomes his best friend, Brooks the old librarian, the corrupt Warden Norton, guards and prisoners.
Red is our surrogate. He's the one we identify with, and the redemption, when it comes, is Red's.
We've been shown by Andy's example that you have to keep true to yourself, not lose hope, bide
your time, set a quiet example and look for your chance. \"I guess it comes down to a simple choice,
really,\" he tells Red. \"Get busy livin' or get busy dyin'.\"
<br><br>The key to the film's structure, I think, is that it's not about its hero, but about our relationship
with him - our curiosity, our pity, our admiration. If Andy had been the heroic center, bravely enduring,
the film would have been conventional, and less mysterious. But we wonder about this guy.
Did he really kill those two people? Why does he keep so much to himself? Why can he amble
through the prison yard like a free man on a stroll, when everyone else plods or sidles?
<br><br>People like excitement at the movies, and titles that provide it do well. Films about \"redemption\"
are approached with great wariness; a lot of people are not thrilled by the prospect of a great film -
it sounds like work. But there's a hunger for messages of hope, and when a film offers one, it's likely
to have staying power even if it doesn't grab an immediate audience.",
   user_id: 4, movie_id: 4},
  {title: "Stephen King's Psycho-Clown Epic 'Is the Stuff of Nightmares'",
   content: "Expect all the bleak summer chatter about the dying box office to fade with the opening of It, 
a crowdpleasing frightfest bound for box-office paydirt. For weeks now, the trailers for the film version
of Stephen King's terror classic have been cranking us up to lose our shit. That evil clown Pennywise,
a spectacularly scary Bill Skarsgard (Alexander's brother), is the stuff of nightmares. The full-length
movie, however, can't match the trailers for sustained terror – it runs a punishing two hours and 15
minutes (and it's only half of the novel). But It works enough of the time to deliver on the promise of
bad dreams.
<br><br>Directed by Andy Muschietti (Mama), from a script by Chase Palmer, Gary Dauberman and
Cary Fukunaga (True Detective: Season One – the good season) the film is based on King's 1986
novel which became a highly rated ABC miniseries in 1990 and featured Tim Curry as the nasty
piece of business known as Pennywise. An R-rated movie, with its spray of gore and f-bombs,
usually beats the pants off a safe network series anytime. And when Pennywise bites off a kid's arm,
it's a cruncher. You'll scream bloody murder.
<br><br>Which brings us to the plot. Children are disappearing in the town of Derry, Maine, courtesy of
Pennywise, who shows up in Derry every 27 years and scares kids to death by transforming himself
into their worst fears. The time is the late 1980s – King set the first part of the book in the 1950s
when he was growing up – but the update suits Muschietti. Our heroes are still seven high school kids
who call themselves \"The Losers' Club,\" misfits who find their strength in sticking together.
Jaeden Lieberher (Midnight Special) excels as Bill, the leader of the Club. It's the disappearance
of his little cutie brother – the one Pennywise sucks into a sewer in the middle of a rain storm –
that starts a panic. Finn Wolfhard plays Richie, the funny one; Jack Dylan Grazer is Eddie, the
germaphobic one; Wyatt Oleff is Stanley, the Jewish one; Jeremy Ray Taylor is Ben, the chubby one;
and Chosen Jacobs is Mike, the African-American one. The stereotypes are completed by the spirited
Sophia Lillis as Beverly, the female one.
<br><br>Yes, the boys – especially Bill and Ben – compete for her attention. And, yes, each is coping
with a serious issue at home, from neglect to sexual abuse and violence. The parents are mostly
absent; when they do appear, they're pretty monstrous themselves. All seven losers also must cope
with bullying at the hands of the Bowers gang, led by a brutish bully named Henry
(Nicholas Hamilton). But Pennywise is all their fears rolled up into one creepy, dancing clown
with yellow teeth, a high-pitched squeak of a voice and a thing for the way fear induces kids to
sweat. It makes them taste better, he says. All together now: Eww!",
   user_id: 5, movie_id: 5},
  {title: "The Best Marvel Film In Years",
   content: "Like many people, Spider-Man is by far my favorite superhero. Rather than the
typical statuesque demigod, he's a nerd whose weird side-hobby isolates him from the crowd.
Everyone who's ever felt like an outsider relates to Spider-Man, which is to say, everyone.<br><br>
Spider-Man helped start the superhero trend, and it's been frustrating to watch the character
decline after hitting the spectacular heights of Spider-Man 2. And knowing that he'd be
integrated into the Marvel machine, that Homecoming was hobbled together by no less than six
different screenwriters, I assumed this was going to be a polished piece of marketing rather
than a great story.<br><br>
But I'm delighted to say I was wrong; this might just be my favorite Marvel movie ever, even
eclipsing the original Iron Man. While I always found Marvel's cinematic universe interesting,
I didn't find The Avengers to be a particularly great movie; it was a fun blockbuster, no more
and no less. It was Civil War that really took advantage of the shared universe by setting all
these characters against each other in a conflict that felt genuine, a clash of perspective
rather than another vague world-ending threat.<br><br>
But in Homecoming, the Marvel universe finally feels alive. I like to criticize Marvel for
being overly formulaic, but their recent efforts prove that they're putting real thought into
the wider implications of their interconnected mega-franchise. Homecoming begins during the
cleanup of the invasion of New York that took place in during The Avengers, asking the
question; what happened to all those broken pieces of alien tech lying around the city? As
Civil War proved, considering the consequences of these apocalyptic battles is so much more
interesting than just moving on to the next city-destroying set piece.<br><br>
Peter Parker grew up during the aftermath of the New York attack, and naturally, he's an
Avengers fanboy, a gifted high-schooler desperate to join the legendary superhero team,
like a young musician who yearns to become a celebrity. His fellow classmates are busy
debating which Avenger is hotter, Captain America stars in embarrassing educational videos;
after years of careful world-building, this universe feels real.<br><br>
Thankfully, at no point do we witness a radioactive spider bite. This, and Uncle Ben's death,
have become as tiresome as the death of the Waynes. I never want to see a string of pearls
fall on the floor of a dark alleyway again, and likewise, we all know Spider-Man's origin
off by heart.",
   user_id: 2, movie_id: 13},
  {title: "Two different readings of a modern marriage",
   content: "The last time David Fincher took a stab at a bestselling potboiler with an
enigmatic femme fatale, the disappointing result was The Girl With the Dragon Tattoo, an
eye-catchingly stylish but thematically empty (and, frankly, unnecessary) English-language
remake of an entirely serviceable Danish/Swedish hit. Now, with this grippingly caustic
adaptation of Gillian Flynn's bifurcated novel (which the author has brilliantly adapted
and reconfigured for the screen), Fincher is back on form, mixing the forensic procedure of
Zodiac with the playful high-gloss sheen of The Game to ingeniously wrong-foot the audience,
leading them on a merry dance of death through the murderous maze of modern marriage.<br><br>
On the day of his fifth wedding anniversary, bar owner Nick Dunne (Ben Affleck) finds his
Missouri home theatrically violated; the front door open; a glass table overturned and
smashed; his wife, Amy (Rosamund Pike), unaccountably missing. Arriving at the scene,
detective Rhonda Boney (Kim Dickens, with a touch of Fargo's Marge Gunderson) senses that
all is not as it seems. Evidence of financial troubles and domestic disputes turns the finger
of suspicion toward Nick, whose uncertain displays of grief are deemed insufficient in an age
of social media and rolling news. Within days, the realignment of Nick's \"smiling sociopath\"
public image becomes more pressing than the search for his gone girl wife, whose own voice
is heard through the pages of an incriminating diary, which reveals an alternative reading
of their apparently idyllic marriage.<br><br>
Part putative murder mystery, part cynically sexy social satire, Gone Girl opens with Nick
wondering: \"What are you thinking? How are you feeling? What have we done to each other?\",
and then spends most of its lengthy running time gleefully refusing to answer any of those
questions. Just as The Game found Sean Penn setting elaborate role-playing traps for Michael
Douglas, so the main characters here all adopt and discard projected personae, their true
selves hidden beneath layers of unravelling deceit. Everything is a performance, everyone
pretending to be something they are not, editing and rewriting themselves for the public –
and for one another.<br><br>
Tellingly, Amy is already a quasi-fictional character, immortalised (and perversely idealised)
in her mother's bestselling Amazing Amy children's books, a fairytale alter ego that still
stalks its host in adulthood. Amy's diaries tell another story, in which our (un?)reliable
narrator is increasingly terrorised by Nick, whom she no longer recognises as the man she
married. Meanwhile, Nick takes PR lessons from attorney Tanner Bolt (Tyler Perry), the \"patron
saint of wife killers\" who understands the fine art of faking sincerity for the media. With
its unhappily \"shared\" photos and incriminatory TV smiles, Gone Girl could be interpreted as
a wryly morbid companion piece to The Social Network – a homicide investigation (without a body)
played out in an arena in which technology has blurred the divide between the public and the
private.",
   user_id: 2, movie_id: 15},
  {title: "How Inception proves the art of baffling films does make sense",
   content: "'Dad, what do you think it meant when the totem wobbled like that?' Many parents
will be asked a tricky question like this as they leave the cinema after watching Inception.
Some will inevitably answer, 'Er… what was the totem again?' to be met with the unending
scorn of their offspring.<br><br>
Even Leonardo DiCaprio, the star of Christopher Nolan's complex summer blockbuster, has urged
filmgoers to see Inception twice. He believes that a second viewing clarifies some difficult
plot points and allows the acting to shine through.<br><br>
\"The sheer nature and the scope of the film and a lot of the action presents itself as
something extremely surreal and infinite in possibility,\" he said. \"But when you start to
home in on the character's journey, it is four different states of going deep into one's past.\"<br><br>
DiCaprio speaks with the benefit of having negotiated a challenging learning curve. In February
he admitted that the screenplay \"didn't make sense to many of us\" during the shooting
process. Bemused fans with no time to go back to the cinema are seeking out answers on
Twitter, where the film is repeatedly appearing at the top of the list of most tweeted-about
subjects.<br><br>
Younger viewers should have less of a problem. The thriller, which is largely set inside
the heads of its protagonists during a drug-induced sleep, closely resembles the structure
of a video game. It sets up a world where narrative is reversible and several things can go
on at the same time, at different speeds.<br><br>
\"I got lost in the skiing bit,\" confessed Kathy Stephens, 46, from Middlesex after a
screening in London's Leicester Square. \"I knew we were going down the levels of a dream,
but I wanted to discuss it with my friends to work it out.\"<br><br>
For her younger companions, Charlie and Sarah Kern, Inception made comparatively easy viewing.
\"I was worried before that it would be hard to follow, but it was fine,\" said Sarah, 18.<br><br>
\"It was a tailor-made video game, wasn't it? With all those levels?\" asked a fellow
audience member, the rather more cynical 45-year-old Rose Scott from London. \"And presumably
Inception II is already on the way.\"<br><br>
It might be all right to spend £9.50 on a cinema ticket to be baffled, but for a Hollywood
director to spend a budget of more than $200m on confusing his audience seems more extravagant.
In fact, however, Nolan is following a fine cinematic tradition. The art of unsettling an
audience with a fiendish plot or a subversive narrative technique has an illustrious history,
according to Philip French.
\"At one time in my career I thought that if a film was immediately understood, then it had
failed,\" the Observer's veteran film critic, a fan of Inception, said this weekend. He
points out that Orson Welles' revered Citizen Kane was regarded in much the same way when
it came out in 1941. Audiences then were at a loss to know what the elusive \"Rosebud\"
really was.<br><br>
Comparisons with Citizen Kane are not necessarily so far-fetched. Rotten Tomatoes, the
influential American on-line reviewing website, gave Inception a 100% rating, a rare honour
it shares with Welles's masterpiece.",
   user_id: 2, movie_id: 7},
  {title: "The benchmark for all sci-fi films to come",
   content: "\"The Matrix\" is a visually dazzling cyberadventure, full of kinetic excitement,
but it retreats to formula just when it's getting interesting. It's kind of a letdown when a
movie begins by redefining the nature of reality, and ends with a shoot-out. We want a leap of
the imagination, not one of those obligatory climaxes with automatic weapons fire.<br><br>
I've seen dozens if not hundreds of these exercises in violence, which recycle the same tired
ideas: Bad guys fire thousands of rounds, but are unable to hit the good guy. Then it's down
to the final showdown between good and evil--a martial arts battle in which the good guy gets
pounded until he's almost dead, before he finds the inner will to fight back. Been there,
seen that (although rarely done this well).
Too bad, because the set-up is intriguing. \"The Matrix\" recycles the premises of \"Dark City\"
and \"Strange Days,\" turns up the heat and the volume, and borrows the gravity-defying
choreography of Hong Kong action movies. It's fun, but it could have been more. The directors
are Larry and Andy Wachowski, who know how to make movies (their first film, \"Bound\" made
my 10 best list in 1996). Here, with a big budget and veteran action producer Joel Silver,
they've played it safer; there's nothing wrong with going for the Friday night action
market, but you can aim higher and still do business.<br><br>
Warning; spoilers ahead. The plot involves Neo (Keanu Reeves), a mild-mannered software
author by day, a feared hacker by night. He's recruited by a cell of cyber-rebels, led
by the profound Morpheus (Laurence Fishburne) and the leather-clad warrior Trinity
(Carrie-Anne Moss). They've made a fundamental discovery about the world: It doesn't exist.
It's actually a form of Virtual Reality, designed to lull us into lives of blind obedience
to the \"system.\" We obediently go to our crummy jobs every day, little realizing, as
Morpheus tells Neo, that \"Matrix is the wool that has been pulled over your eyes--that
you are a slave.\" The rebels want to crack the framework that holds the Matrix in
place, and free mankind. Morpheus believes Neo is the Messianic \"One\" who can lead
this rebellion, which requires mind power as much as physical strength. Arrayed against
them are the Agents, who look like Blues Brothers. The movie's battles take place in
Virtual Reality; the heroes' minds are plugged into the combat. (You can still get
killed, though: \"The body cannot live without the mind\"). \"Jacking in\" like this
was a concept in \"Strange Days\" and has also been suggested in novels by William
Gibson (\"Idoru\") and others. The notion that the world is an artificial construction,
designed by outsiders to deceive and use humans, is straight out of \"Dark City.\"
Both of those movies, however, explored their implications as the best science fiction
often does. \"Dark City\" was fascinated by the Strangers who had a poignant dilemma:
They were dying aliens who hoped to learn from human methods of adaptation and survival.<br><br>
In \"Matrix\", on the other hand, there aren't flesh-and-blood creatures behind the
illusion--only a computer program that can think, and learn. The Agents function
primarily as opponents in a high-stakes computer game. The movie offers no clear
explanation of why the Matrix-making program went to all that trouble. Of course,
for a program, running is its own reward--but an intelligent program might bring
terrifying logic to its decisions.",
   user_id: 2, movie_id: 8},
  {title: "Well, one of the best films ever, for one thing...",
   content: "Writing a review of The Matrix is a very hard thing for me to do because
this film means a lot to me and therefore I want to do the film justice by writing
a good review. To tell the truth the first time I saw the film I was enamored by
the effects. I remember thinking to myself that this was one of the most visually
stunning films I had ever seen in my life. Also having always been a comic book fan
and a fan of films that were larger than life, the transitional element of the story
was very appealing to me and this probably heightened my enjoyment of the film very much.
It wasn't until some time later (and after having seen the film a few times more)
that I started to think about the film. I recognized the Christian elements quite
quickly but it wasn't until I wrote an actual 15-page essay on the film that I tapped
into some of the philosophical and religious elements and that made me appreciate the
film even more. I won't say that I have recognized all elements because the film is quite
literally packed with them.<br><br>
Acting wise the film works excellently. I won't say that there aren't any issues
because there are but overall the acting is pretty flawless. Keanu Reeves plays the
main character, Neo, or Thomas A. Anderson and while he is not the perfect actor
I think he does a pretty good job in The Matrix (and the sequels). He doesn't have
the longest of lines which was probably a deliberate choice from the directors and
it works because this gives him a better opportunity to work on posture and facial
expressions and I must say that overall his body language is very good. Very clear
and well defined. Laurence Fishbourne plays Neo's mentor Morpheus and he does an
excellent job of it. His lines flow with a certain confidence and style that makes
his character somewhat unique and interesting. Carrie-Anne Moss does a good job as
well and succeeds in looking both cool and sexy in her leather outfit. Joe Pantoliano,
a critically underrated actor does a brilliant job of bringing his character, Cypher,
to life. I can't say much about him because his character is pretty essential to the
plot and I certainly don't wan't to spoil it for anyone. Gloria Foster appears in a
relatively small role that will have greater significance in the following films and
she does a very good job. The best acting is provided by Hugo Weaving, however,
in his portrayal of Agent Smith. It is really something to watch him act out the
changes in his character. Agent Smith gains some human traits like anger, sense
of dread, hate and eventually even a sly sense of humor (mostly in the sequels).
Two thumbs way up to Weaving who has created one of the finest screen villains of all time.",
   user_id: 4, movie_id: 8},
  {title: "A watershed moment in film-making – and what a kick-ass masterpiece",
   content: "There aren't many movies I watched in the theatre twice – let alone on
the same day - but immediately after the credits had rolled (and still pumped up by
'Rage against the Machine'), I queued up for the next screening of 'The Matrix'.
I was so blown away by that film, I feared - and probably rightly so - that I hadn't
caught every detail of what I'd just seen. I later found out that many of my friends
had had a similar reaction to the film, and I know virtually no one who liked the
film and didn't watch it at least twice. It's simply one of those rare films that
are so rich you just have to watch them several times.<br><br>
In structure, style and concept, 'The Matrix' was ground-breaking; it marked the
first time the visual style of Manga comic books and Anime such as 'Akira' or 'Ghost
in the Shell' had been successfully translated to a live-action film. Apart from
'Blade Runner', which has a totally different mood and pace (but is also a masterpiece
and visionary film-making), there simply hadn't been anything even remotely like it.
The jaw-dropping action sequences have such a raw, gripping energy they feel like an
adrenalin overdose, but unlike most action films, they never overshadow the story;
on the contrary - they enhance it and make complete sense within that universe.<br><br>
As for the story itself, I think this is one of the most original, fascinating
Sci-Fi tales you'll likely ever see on screen. Clearly inspired by Japanese Anime
and Manga yet also by authors like Isaac Asimov or Philip K. Dick, the story about
humanity's war against its own creation, machines of an artificial intelligence
that have evolved to the point where they have become the dominant 'species' and
vastly superior to their creators, could take place in the same world as 'Blade Runner'
or 'The Terminator' - albeit several hundred years later. But there is also a mythical,
even religious undercurrent to the story; the themes of a prophecy, a \"liberator\"
or even a \"messiah\" make 'The Matrix' transcend the Science-Fiction genre and become
even more unique.<br><br>
'The Matrix' was a watershed moment in filmmaking – in every respect – and even though
two inferior sequels have left a bit of a stain on the film, they can't distract from
what an uncompromising and hugely influential masterpiece this is. Sci-Fi movies
that were released after 'The Matrix' have tried very hard to achieve a similar
look and tone, but the original still owns them all. 10 stars out of 10.",
   user_id: 5, movie_id: 8},
  {title: "One of the greatest films of all time.",
   content: "Although George Lucas' movies are good in their own right (except for
the juvenile elements he puts in to sell toys to finance the franchise), his scripts
(which borrow heavily from J.R.R.Tolkien, mythology & religion) can't compare with
the brilliance of the literary trilogy `The Lord of the Rings'. Granted, Lucas took
on a herculean task in writing & directing his story himself, but Tolkien's words,
along with Peter Jackson's faithful adaptation & inspired vision, have created something
no one man could equal.<br><br>
Of course, it helps that Jackson insisted on at least a 2 picture deal, & New Line
Cinema was brave enough to foot the bill up front for 3 movies. They spent $180 million
to film all 3 simultaneously. With the New Zealand exchange rate, that equals $360
million ($90 million ea.), but since they used many of the same sets, and FX development
costs were spread throughout, we're seeing $120-$150 million on the screen. This will
ensure consistency in plot, casting, tone, etc.<br><br>
In 3 hours, Jackson has crammed everything essential from the first novel & then some
into the film, rewriting some scenes & dialogue with lesser characters for the leads,
leaving out only what there wasn't enough time for. Basically, you have two 90 min.
movies running back to back. There are no slow spots, just one climax after another.
From the opening 10 min. backstory where the Dark Lord Sauron is shown on the battlefield
wiping out men & elves 10 at a time with each swing of his mace, I was blown away.
The romance between Aragorn, king in exile, and Arwen, daughter of the elf-lord,
is played up for the \"Titanic\" quotient, but it's well done.<br><br>
The story, sets, costumes & FX are so rich, you'll have to see the film several
times to absorb everything. The unspoiled New Zealand locales are spectacular,
providing a variety of environments to represent the different settings on the
characters' journey. The location sets are imaginative, detailed & weathered, adding
to their believability, while the studio sets match them in meticulousness. The
costumes are at once familiar & strange, drawing on both the medievil & the fantastic,
but more important, they're also functional & practical. The music by Howard Shore
is appropriately sweeping, Celtic & folky in keeping with the novel, although it
lacks the memorable themes of John Williams or Jerry Goldsmith, but neither would
commit a year or more to a 3 picture project. The FX are as they should be, unobtrusive
& unnoticed most of the time, there only to support the story not draw attention away
from it as in most Hollywood movies which try to coverup illogical plots & bad acting.<br><br>
I'm particularly gratified by the casting of Viggo Mortenson as Aragorn which was a
last minute stroke of luck when the actor first chosen for the part backed out due
to differences with the director. I've always thought Mortenson had an intensity &
striking but not pretty-boy looks that could portray a flawed, dangerous hero instead
of the villains Hollywood always picked him for.<br><br>
A stellar cast giving some of their best performances, visuals that deliver beyond
what I imagined, a perfect mix of humor, passion & tragedy, and a feeling of grandeur,
scope & impending doom. Perhaps as an ensemble piece with so many characters & the
inability to concentrate on any one, it can't be measured against some of the classic
character study films, but even the casual moviegoer can grasp the ideas & not get
lost As far as I'm concerned, it's one of the greatest films of all time.",
   user_id: 1, movie_id: 2},
  {title: "Spy sequel reaches new heights of skyscraping silliness",
   content: "James who? While 007 has been on extended annual leave as a result of Daniel Craig's 
cold feet, Taron Egerton's thoroughly less urbane secret agent Eggsy Unwin has managed to
thoroughly outdo him, with Matthew Vaughn's sequel to his hit 2015 comedy-thriller doubling
down on the qualities that marked its predecessor out from the superspy pack: more star-filled,
more gleefully grisly, and reaching new heights of skyscraping silliness.<br><br>
It's a film so cartoonishly outsized that it almost renders the first film restrained by comparison.
Whether that's a good thing depends on the viewer's tolerance for death-defying feats of illogicality,
or action scenes that stretch to gargantuan lengths. Indeed, Kingsman's two-hour 20-minute
running time could have been shaved by around a fifth, without losing a great deal. But, crucially,
the visual wit that made the original feel so bracingly fresh is maintained, not to mention its fondness
for turning the Savile Row air blue – if you've ever hoped to witness Elton John spitting out four-letter
words like a Gatling gun, all while wearing a remarkable feathered suit, then this might be the
gonzo spy caper for you.<br><br>
A manic opening fight scene in a black cab, between Eggsy and his old finishing-school nemesis
Charlie, ups the ante immediately, a flurry of kicks, jabs and gravity-upending camerawork.
Charlie, now menacingly equipped with a bionic arm, is these days in the service of new
pantomime big bad, Poppy Adams, played with lysergic glee by Julianne Moore. As the soccer
mom-ish leader of nefarious crime cartel the Golden Circle, Poppy rules over the entire global
drug trade, which she controls from a jungle lair curiously kitted out as a kitsch 50s utopia,
featuring gleaming bowling alleys, diners and nail salons, but also, somewhat confusingly,
robot dogs and a captive Elton John.<br><br>
If there were any doubts about Poppy's malicious intentions, they're quickly dismissed as she
engineers an unhappy meeting between a henchman and a meat grinder, one of several
gruesome scenes that comfortably earns The Golden Circle its grown-up rating. Poppy's grand
plan is equally nefarious: she has spiked the entire planetary supply of narcotics with a toxin
that causes the user's veins to turn blue and will ultimately kill them. There's an antidote, of course,
but Poppy will only release it if the world's leaders legalise all drugs and in the process hand her an
extremely lucrative monopoly to rule over.<br><br>
To allow her plan to go forward without a hitch, Poppy carries out a pre-emptive strike on the
Kingsman, wiping out a large chunk of its network of superspies, and forcing Eggsy and Merlin
(Mark Strong) to seek refuge at the home of their US equivalent, the Statesmen, a ragtag bunch
of whiskey-hawking American agents who have seemingly been introduced for the sole reason of
cramming in a handful of available A-listers: Jeff Bridges, Narcos's Pedro Pascal, Halle Berry and a
somewhat underused Channing Tatum.<br><br>
It represents a dramatic turnover of cast members from the fairly compact ensemble in the first film
and, for much of The Golden Circle's first hour, there's a slight absence of the crackling character
dynamics that provided some flickers of realism amid the preposterous whizz-bangery. Most sorely
missed is the relationship between Eggsy and Colin Firth's delightfully avuncular mentor figure
Harry Hart, who was offed, seemingly definitively with a bullet to the brain towards its end.",
   user_id: 4, movie_id: 19},
  {title: "Boy racer hits all the right notes",
   content: "Baby is a young man who creates remixes of his life. He records conversations had 
around him (almost always around and not with him) on an old-fashioned mini-cassette recorder,
and then mixes them into songs with some wonderfully antiquated keyboard and rhythm
equipment. The first one we see him create is called \"Was He Slow,\" using a question asked by
an accomplice about Baby's mental capacity as a hook. Much like Baby turns the world around
him into music, writer/director Edgar Wright remixes the movies and tunes that have influenced
him into the wildly joyous and fantastically entertaining \"Baby Driver.\" As CGI robots clang into
each other and superheroes take to the sky, here's Wright to ask if you remember how movies used
to thrill us with a turn of phrase, a squeal of a wheel, a diving plot twist, or a romantic kiss.
\"Baby Driver\" feels both influenced by the modern era of self-aware, pop-culture filmmaking and
charmingly old-fashioned at the same time, which is only one of its minor miracles. It's as much
fun as you're going to have in a movie theater this year.<br><br>
Yes, his name is \"B-A-B-Y, Baby\" (Ansel Elgort). At least, that's the name he gives people when asked,
although he's more often ignored. He's the nearly silent getaway driver for a robbery syndicate
managed by Doc (Kevin Spacey), who organizes the crime, hires three criminals, and then puts
them in Baby's car. You see, Baby can drive. But he needs music to do it. After a car accident as
a kid left him with tinnitus, he spends the vast majority of his waking hours with ear buds in his
ears to drown out the ringing. And the world around him moves to the music on one of his many
iPods—he has various ones for different moods. Sometimes the world seems to respond to his
choice, sometimes his choice seems to influence the world around him—either way, music is as
essential to the success of \"Baby Driver\" as it was to \"La La Land\", maybe more.<br><br>
Take the riveting first scene. Three criminals—Buddy (Jon Hamm), Darling (Eiza Gonzalez), and
Griff (Jon Bernthal)—leap from a car outside of a bank just as Baby cues up \"Bellbottoms\" by
The Jon Spencer Blues Explosion in his 'buds. Everything from this point on moves in rhythm
with the music from the slamming of the car doors after the bank robbers return to the squealing
tires of one of the best car chase scenes in years. We've seen countless action scenes scored to
pop or rock songs, but how many have you seen in which the action works in unison with the
music? And Wright takes this brilliant concept a step further, making even everyday normal
activity feel like it's part of Baby's soundtrack. The sound of someone typing a text message
on a phone or placing stacks of money on a table will work with the beat of a song, creating a
film that has a rhythm, flow and structure from first frame to last that works in conjunction with
its soundtrack. It's fluid and jaw-dropping—the kind of thing you want to see immediately again
after it's over to catch all the things you missed.<br><br>
The last paragraph probably makes \"Baby Driver\" sound like a music video, and has likely
pushed out potential viewers looking for more substance than style. Trust me when I say that
Wright doesn't skimp on the former. There's enough story and action here to satisfy without the
music that drives the filmmaking. Much of the joy of this film is watching it unfold so I'll be brief
with plot. Baby had a brief dalliance with crime, and he made the mistake of robbing from Doc,
who now forces him to drive as penance. He's almost done. He has one more job for Doc and
then he'll be back to his normal life. Of course, we all know how that typically turns out in crime
movies. And when Baby meets a lovely waitress named Debora (Lily James), he finds a reason to
go straight. That's all you need to know.<br><br>
At its core, \"Baby Driver\" recalls decades of movies that anchored their narratives on criminals
and the art of the car chase. There's a remarkably old-fashioned sensibility to the way Wright
structures and details his film, and it's not just because his two genetically blessed stars look
like they could have walked out of a 1940s noir (their All-American aesthetic is even more striking
n a few gorgeous black-and-white shots that recall old Hollywood even more). \"Baby Driver\" is a
high-concept film that never underwhelms detail, and it's those charming little beats within the
overall tune that hold it together.",
   user_id: 2, movie_id: 23},
  {title: "M Night Shyamalan twists again – and again",
   content: "The traditional response with a new M Night Shyamalan movie is, \"Oh no, what's the 
twist ending this time?\" But Split is more of a feature-length twist: its chief antagonist
has dissociative identity disorder, which means he cycles between two dozen personalities.
It's lurid and warped and more than a little dodgy, but it comes off thanks to the bravura
performance – or performances – of James McAvoy, who throws himself into the role – or roles –
with an admirable mix of skill and abandon.<br><br>
We first meet McAvoy as Dennis, a cross-looking neat-freak who abducts three young women from
the shopping mall and imprisons them in his labyrinthine underground lair. But next time he visits
them, he's Patricia, a prim English governess. Then he's Hedwig, a lisping, nine-year-old Kanye
West fan, who warns them about \"The Beast\", suggesting this psycho wants to chew on more than
just scenery.<br><br>
The traumatised hostages don't know what to make of him – or them – though the outsider of the
group (The Witch's Anya Taylor-Joy) senses an opportunity. Meanwhile, as Barry, a relatively
well-adjusted Brooklyn fashionista, McAvoy is also visiting his therapist, who dishes out
pseudo-clinical exposition but shows little concern for what his other personalities might be up to.<br><br>
Split wants to have its cake and eat it in terms of mental illness, but it's an unpredictable,
suspenseful little tale that comes together surprisingly satisfyingly, thanks to clever plotting
and a truly committed performance from McAvoy. Plus a sting in the tail that non-Shyamalanites
will find utterly bewildering.<br><br>
Within the process of watching an M. Night Shyamalan film, there exists a parallel and simultaneous
process of searching for its inevitable twist. This has been true of every film the writer-director
has made since his surprise smash debut, \"The Sixth Sense,\" nearly two decades ago. We wonder:
How will he dazzle us? What clues should we be searching for? Will it actually work this time?<br><br>
Increasingly, with middling efforts like \"The Village\" and \"Lady in the Water\"—and dreary aberrations
like \"The Last Airbender\" and \"After Earth,\" which bore none of his signature style—the answer to that
last question has been: Not really. Which makes his latest, \"Split,\" such an exciting return to form.
A rare, straight-up horror film from Shyamalan, \"Split\" is a thrilling reminder of what a technical
master he can be. All his virtuoso camerawork is on display: his lifelong, loving homage to Alfred
Hitchcock, which includes, as always, inserting himself in a cameo. And the twist—that there is no
Big Twist—is one of the most refreshing parts of all.<br><br>
\"Split\" is more lean and taut in its narrative and pace than we've seen from Shyamalan lately. Despite
its nearly two-hour running time, it feels like it's in constant forward motion, even when it flashes
backward to provide perspective.<br><br>
It's as if there's a spring in his step, even as he wallows in grunge. And a lot of that has to do
with the tour-de-force performance from James McAvoy as a kidnapper named Kevin juggling two-dozen
distinct personalities.",
   user_id: 5, movie_id: 22},
  {title: "A gigantic spectacle of pure hallucinatory craziness",
   content: "With this visually staggering film, director Denis Villeneuve brings us to a kind of Ozymandias moment. It just has to be experienced on the biggest screen possible. Blade Runner 2049 is a narcotic spectacle of eerie and pitiless vastness, by turns satirical, tragic and romantic.<br><br>
This is the sequel to the 1982 sci-fi classic, directed by Ridley Scott and based on Philip K Dick's novel Do Androids Dream Of Electric Sheep?, starring Harrison Ford as a \"blade runner\", a futureworld cop whose job is to track down and kill disobedient almost-human androids known as replicants. The 2017 follow-up simply couldn't be any more of a triumph: a stunning enlargement and improvement.<br><br>
Its mind-boggling, cortex-wobbling, craniofacial-splintering images are there to trigger awe or even a kind of ecstatic despair at the idea of a post-human future, and what it means to imagine the wreck of our current form of homo sapiens. Evolution has not finished yet, any more than it was finished 100,000 years ago. As so often in literature and cinema, we are reminded that science fiction is there to tackle big ideas, and makes realist genres look flimsy and parochial. This film delivers pure hallucinatory craziness that leaves you hyperventilating.<br><br>
Blade Runner 2049 is co-scripted by the original screenwriter, Hampton Fancher, and riffs on the first film. There are poignant theme-variations on memory and crying in the rain and a cityscape full of signs in different languages (Russian, Japanese, Hindi, Korean), ghostly VR advertising avatars and flashing corporate logos, playfully including the obsolete PanAm.<br><br>
It alludes to films the first Blade Runner helped inspire, such as Cameron's The Terminator, Spielberg's AI Artificial Intelligence, Nolan's The Dark Knight, Andrew Stanton's WALL-E and Spike Jonze's Her. The references reach further back also, to the Kubrickian hotel-bar and spaceship, and to the desolate final moments of Planet of the Apes. You could call that ancestor-worship, were it not that the franchise already deserves its own ancestor status. In fact, the sequel slightly de-emphasises the first film's intimate, downbeat noir qualities in favour of
something more gigantic and monolithic, preserving Ridley Scott's massively controlled andante tempo. Yet there is something so sinuous and manoeuvrable about the drama, and its CGI rendering is like nothing I've ever seen.<br><br>
The setting is Los Angeles, 30 years on from the first film's 2019 setting. The corporation that once manufactured the replicants, whose spartacist uprising was the original theme, has been bought out by an agribusiness empire owned by one Niander Wallace (Jared Leto), a grotesque figure brooding on how to create replicant-workers on a scale sufficient for his imperial plans. Ryan Gosling plays LAPD officer K, a limited-lifespan replicant whose task is to track down and destroy those first-gen models who can live as long as humans, and are still illegally hiding out.
K has a gorgeous virtual-reality live-in girlfriend, quibblingly named Joi (Ana De Armas), with whom he believes himself to be in love, though he understands that both she and he are constructed artefacts.<br><br>
After making a sensational discovery, K embarks on a dangerous mission, and both his LAPD boss Lieutenant Joshi (Robin Wright) and Wallace himself are very interested in what he might discover. Wallace despatches his deadpan assistant, named Luv and superbly played by Sylvia Hoeks, with an utterly unnerving habit of crying when her face appears to show no human emotion at all. It is all leading to a mysterious, Freudian encounter with Rick Deckard himself, the outsider cop from the first film, played with haggard misanthropy by Harrison Ford.",
   user_id: 2, movie_id: 21},
  {title: "Hunting Replicants Amid Strangeness",
   content: "A lot of the movies released in the late 1970s and early '80s have spawned franchises, merchandising empires and what we are now invited to call \"cinematic universes.\" \"Blade Runner,\" Ridley Scott's initially underrated 1982 adaptation of a novel by Philip K. Dick, accomplished something more unusual. It sent tendrils of influence — pictorial, conceptual and spiritual — into every corner of the culture and inspired a mystery cult.<br><br>
Like other sacred texts, the film invites doctrinal arguments and esoteric inquiries. One of my fondest memories as a father and a film critic is of an impromptu post-screening seminar with two 11-year-olds about occult meanings and hidden clues in the director's cut. How do we know (if indeed we do know) that Harrison Ford is a replicant? What is the significance of the origami horse? Are Sean Young's shoulder pads for real?<br><br>
Alongside these basic interpretive questions, an academic subfield has blossomed, isolating \"Blade Runner\" as one of the original symptoms of postmodernism, a terminal and interminable disease of the mind. The film's blend of curatorial nostalgia and dystopian prophecy captured a mood of self-conscious melancholy in its moment and set a tone of melancholy self-consciousness that has endured ever since. Maybe the real world never quite achieved the smoky neon-noir glow of Mr. Scott's Los Angeles, but the map of our collective dream world was permanently redrawn.<br><br>
The precise future \"Blade Runner\" projected is now less than two years away, and the next chapter, once something to be dreaded, seems, if anything, overdue. \"Blade Runner 2049,\" directed by Denis Villeneuve from a script by Hampton Fancher and Michael Green, tries both to honor the original and to slip free of its considerable shadow. That's no easy feat, and it's worth noting right away that, in narrow movie terms, Mr. Villeneuve, who also directed \"Arrival,\" mostly succeeds. From the opening aerial shots of a thoroughly denatured agricultural landscape and the 
lethal confrontation that follows, we know we are in the presence of a masterly visual tactician and a shrewd storyteller.<br><br>
We are also in territory that is both familiar and disorienting. A brief note explains what has and hasn't changed in the 30 years since the events in the first \"Blade Runner.\" Three-wheeled spinners still zoom through the California skies, and the building-size video advertisements have evolved into seductive, R-rated holograms. The titular profession — hunting down and \"retiring\" renegade members of the almost-human, genetically engineered android species known as replicants — is practiced with the same brutal doggedness as in the old days.<br><br>
A new, more obedient type of replicant has been developed by a corporation led by a tech visionary played by Jared Leto. (His lieutenant Luv is played by Sylvia Hoeks, a far more vivid and persuasively terrifying presence than the mannered Mr. Leto.) One of these models is our hero, an L.A.P.D. employee known as K. (It's an abbreviation of his serial number and also, maybe, an allusion to Franz Kafka's avatar of modern alienation. That poor fellow's full name was Josef K; when this K acquires a human pseudonym, it's Joe.)<br><br>
Speaking of avatars of alienation, K moves through his days with the unhurried shuffle and downcast baby blues of Ryan Gosling. This is impeccable casting. Mr. Gosling’s ability to elicit sympathy while seeming too distracted to want it — his knack for making boredom look like passion and vice versa — makes him a perfect warm-blooded robot for our time. He is also, in 2017, something close to what Harrison Ford was 35 years ago: the contemporary embodiment of Hollywood’s venerable ideal of masculine cool, a guy whose toughness will turn out to be the protective shell encasing a tender soul.<br><br>
At first, of course, we must take that sensitivity on faith. K does his grim job thoroughly and without complaint, showing the weary, cynical patience of an old-time shamus. His commander (Robin Wright) is a human who believes that everything depends on policing the border between her kind and K’s. The whole point of “Blade Runner,” though, is that such boundaries are always blurred and porous. K comes home each night from work to the company of Joi (Ana de Armas), his devoted girlfriend, who happens to be a commercially produced artificial intelligence application.<br><br>
We are prepared to acknowledge the pathos and the paradox of her condition, which is a version of K’s own. The idea that synthetic humans harbor feelings, desires and dreams — that they are mirrors of us, that we are replicas of them — has long been a staple of speculative cinema. “Blade Runner 2049” does not wander as deep into this ontological thicket as, say, Steven Spielberg’s “A.I.” or Spike Jonze’s “Her,” but like those movies it uses the conceit of the suffering cyborg as ethical and emotional ballast, a spur to the audience’s curiosity as well as our compassion. A political theme also asserts itself: These replicants are an enslaved labor force; their exploitation is the fuel on which this civilization runs.",
   user_id: 1, movie_id: 21},
])

Rate.create!([
  {score: 8, user_id: 2, movie_id: 37},
  {score: 7, user_id: 5, movie_id: 25},
  {score: 7, user_id: 1, movie_id: 24},
  {score: 8.5, user_id: 2, movie_id: 23},
  {score: 7, user_id: 1, movie_id: 23},
  {score: 8.5, user_id: 2, movie_id: 13},
  {score: 8, user_id: 1, movie_id: 13},
  {score: 7, user_id: 4, movie_id: 13},
  {score: 6, user_id: 2, movie_id: 19},
  {score: 7, user_id: 5, movie_id: 19},
  {score: 6, user_id: 3, movie_id: 19},
  {score: 8, user_id: 2, movie_id: 31},
  {score: 8, user_id: 1, movie_id: 31},
  {score: 7.5, user_id: 5, movie_id: 31},
  {score: 7, user_id: 3, movie_id: 31},
  {score: 9, user_id: 2, movie_id: 21},
  {score: 8, user_id: 3, movie_id: 21},
  {score: 9, user_id: 4, movie_id: 21},
  {score: 7, user_id: 4, movie_id: 17},
  {score: 8.5, user_id: 2, movie_id: 17},
  {score: 7, user_id: 5, movie_id: 17},
  {score: 7.5, user_id: 1, movie_id: 17},
  {score: 7.5, user_id: 2, movie_id: 16},
  {score: 7, user_id: 5, movie_id: 16},
  {score: 6.5, user_id: 1, movie_id: 16},
  {score: 9, user_id: 1, movie_id: 11},
  {score: 8.5, user_id: 2, movie_id: 11},
  {score: 8, user_id: 5, movie_id: 11},
  {score: 7.5, user_id: 4, movie_id: 11}
])

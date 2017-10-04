User.create!([
  {email: "than.viet.bach@gmail.com",
    password: "bach123", password_confirmation: "bach123",
    name: "Than Viet Bach", username: "vietbach"},
  {email: "vu.thu.hien@gmail.com",
    password: "hien123", password_confirmation: "hien123",
    name: "Vu Thu Hien", username: "hienvu"},
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
  {code: "EN", name: "English",
    flag_image: File.open(Rails.root + "public/uploads/image/en.png")},
  {code: "JP", name: "Japan",
    flag_image: File.open(Rails.root + "public/uploads/image/jp.png")}
])

Movie.create!([
  {name: "Star Wars: Episode I - The Phantom Menace",
    realease_date: "1999/05/19", producer: "Rick McCallum", director: "George Lucas", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/SW1.jpg")},
  {name: "The Lord of the Rings: The Fellowship of the Ring",
    realease_date: "2001/12/19", producer: "New Line Cinema", director: " Peter Jackson", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/LoR.jpg")},
  {name: "Spirited Away",
    realease_date: "2003/03/28", producer: "Studio Ghibli", director: "Hayao Miyazaki", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
  {name: "The Shawshank Redemption",
    realease_date: "1994/10/14", producer: "Castle Rock Entertainment",
    director: "Frank Darabont", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg")},
  {name: "It (2017)",
    realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/it.jpg")},
  {name: "Forrest Gump",
    realease_date: "1994/07/06", producer: "Paramount Pictures", director: "Robert Zemeckis", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/gump.jpg")},
  {name: "Inception",
    realease_date: "2010/07/16", producer: "Warner Bros", director: " Christopher Nolan", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/inception.jpg")},
  {name: "The Matrix",
    realease_date: "1999/3/31", producer: "Warner Bros.", director: "The Wachowski Brothers", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/matrix.jpg")},
  {name: "One Piece Film Z",
    realease_date: "2012/12/15", producer: "Toei Animation", director: "Tatsuya Nagamine", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/OPz.jpg")},
  {name: "Zootopia",
    realease_date: "2016/2/19", producer: "Walt Disney Pictures", director: "Byron Howard", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/zoo.jpg")},
  {name: "Kimi no na wa.",
    realease_date: "2016/10/27", producer: "Amuse", director: "Makoto Shinkai", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/yn.jpg")},
  {name: "The Dark Knight",
    realease_date: "2008/7/18", producer: "Warner Bros.", director: "Christopher Nolan", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/batman.jpg")},
  {name: "Spider-Man: Homecoming",
    realease_date: "2017/7/7", producer: "Marvel Studios", director: "Jon Watts", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/spider.jpg")},
  {name: "Deadpool",
    realease_date: "2016/2/12", producer: "Marvel Entertainment", director: "Tim Miller", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/deadpool.jpg")},
  {name: "Gone Girl",
    realease_date: "2014/9/26", producer: "20th Century Fox Film Corporation", director: "David Fincher", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/gone.jpg")},
  {name: "Pirates of the Caribbean: Dead Men Tell No Tales",
    realease_date: "2017/5/26", producer: "Walt Disney Pictures", director: "Joachim Rønning", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/Carribe.jpg")},
  {name: "Fantastic Beasts and Where to Find Them",
    realease_date: "2016/10/11", producer: "Warner Bros.", director: "David Yates", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/fantasic.jpg")},
  {name: "The Imitation Game",
    realease_date: "2014/12/14", producer: "Black Bear Pictures", director: "Morten Tyldum", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/game.jpg")},
  {name: "I, Tonya",
    realease_date: "2017/8/9", producer: "Clubhouse Pictures (II)", director: "Craig Gillespie", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/tonya.jpg")},
  {name: "Crows zero",
    realease_date: "2007/10/27", producer: "Akita Shoten", director: "Takashi Miike", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/zero.jpg")},
  # {name: "",
  #   realease_date: "", producer: "", director: "", country_id: 1,
  #   avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
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
    birthday: "1962/9/2", country_id: 1, description: "Keanu Charles Reeves, whose first name means 
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
    change was one of the influences on his career choice.<br> 
    His first acting job was a cereal commercial in 1983; amazingly, the next year, he debuted on 
    the West End stage in \"The Nerd\". A role in the 1986 NBC mini-series Anastasia: The Mystery 
    of Anna (1986) caught Steven Spielberg's eye, leading to Bale's well-documented role in Empire 
    of the Sun (1987). For the range of emotions he displayed as the star of the war epic, 
    he earned a special award by the National Board of Review for Best Performance by a Juvenile Actor."},
  {name: "Heath Ledger", avatar_image: File.open(Rails.root + "public/uploads/image/heath.jpg"),
    birthday: "1979/4/4", country_id: 1, description: "Heath Ledger was born on the fourth of April 1979, 
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
    actors of his day and age in Hollywood.<br>
    He was born John Christopher Depp II in Owensboro, Kentucky, on June 9, 1963, to Betty Sue 
    (Wells), who worked as a waitress, and John Christopher Depp, a civil engineer.<br>
    Depp was raised in Florida. He dropped out of school when he was 15, and fronted a series of 
    music-garage bands, including one named 'The Kids'. However, it was when he married Lori Anne 
    Allison (Lori A. Depp) that he took up the job of being a ballpoint-pen salesman to support himself 
    and his wife. A visit to Los Angeles, California, with his wife, however, happened to be a blessing in 
    disguise, when he met up with actor Nicolas Cage, who advised him to turn to acting, which 
    culminated in Depp's film debut in the low-budget horror film, A Nightmare on Elm Street (1984), 
    where he played a teenager who falls prey to dream-stalking demon Freddy Krueger."},
  {name: "Eddie Redmayne", avatar_image: File.open(Rails.root + "public/uploads/image/Eddie.jpg"),
    birthday: "1982/1/6", country_id: 2, description: "British actor Eddie Redmayne is the first, and thus far 
    only, millennial male to have won an acting Oscar (for The Theory of Everything (2014)).<br>
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
    birthday: "1982/12/26", country_id: 1, description: "Shun Oguri was born on December 26, 1982 in 
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
		in the 1980s to have won the Academy Award for Best Actress (for Black Swan (2010)).<br>
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
   birthday: "1990/8/9", country_id: 2, description: "Bill Skarsgård was born on August 9, 1990
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
  # {name: "", avatar_image: File.open(Rails.root + "public/uploads/image/actor-21.jpg"),
  #  birthday: "", country_id: 1, description: ""},
  # {name: "", avatar_image: File.open(Rails.root + "public/uploads/image/actor-22.jpg"),
  #  birthday: "", country_id: 1, description: ""},
  # {name: "", avatar_image: File.open(Rails.root + "public/uploads/image/actor-23.jpg"),
  #  birthday: "", country_id: 1, description: ""},
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
])

Type.create!([
  {name: "Drama",
    avatar: File.open(Rails.root + "public/uploads/image/drama-genre.jpg")},
  {name: "Short",
    avatar: File.open(Rails.root + "public/uploads/image/short.jpg")},
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
  {movie_id: 10, type_id: 7},
  {movie_id: 10, type_id: 12},
  {movie_id: 10, type_id: 14},
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
  {movie_id: 18, type_id: 10},
  {movie_id: 18, type_id: 1},
  {movie_id: 18, type_id: 4},
  {movie_id: 18, type_id: 18},
  {movie_id: 19, type_id: 1},
  {movie_id: 19, type_id: 10},
  {movie_id: 19, type_id: 20},
  {movie_id: 20, type_id: 4},
  {movie_id: 20, type_id: 5}
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
    <br>At its most basic, the film follows a little girl, Chihiro, on a journey to free her parents. 
    She has to navigate the spirit world she gets trapped in by working in a bathhouse run by an overlord 
    called Yu-baaba. Miyazaki said he'd decided to make it based on the ten-year-old daughter of friend, associate 
    producer Seiji Okuda, who came to stay with him every summer. With this in mind, he made the movie for 
    ten-year-old girls. This is exactly why it resonates so well with people of all ages and why Chihiro feels so real. 
    How often can you say a film has been made for young girls, rather than money or mainstream audiences?
    <br>Many male critics described Chihiro as a \"sullen\" and \"spoiled\" girl, and continue to describe her as such. 
    This is hardly a fair criticism, nor is it an accurate one. When we meet Chihiro, she's being driven away 
    rom her home and everything she knows to live in a new town. All she has to remember her friends is a 
    bouquet. \"The only time I got a bouquet and it's a goodbye present. How depressing,\" she says, only 
    to be reminded by her mom that her dad bought her one for her birthday. She shrugs this off, 
    understandably. Few ten-year-olds would behave so well given the upheaval. When the family exit the car, 
    entranced by the lead up to the abandoned theme park that will soon trap them, Chihiro is whiny because
    her intuition is correct. She follows behind her parents, worried by the little shines and the appearance of 
    the food with no vendor, warning that they shouldn\'t be there.
    <br>These critics will see that she spends the remainder of the film laboring not only for their 
    ignorance but also the fact that they ignore the voice of a young girl.
    <br>What sets her story apart is that Chihiro isn't forced to triumph over great evil and turn from a 
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
  {title:"Embrace the magic",
    content: "Since JRR Tolkien published his mighty head-trip epic in the 1950s, its influence has got 
    everywhere in popular culture: in games, the fantasy genre, and for a while of course in music. 
    Peter Jackson's reverent screen version of Tolkien's first volume, The Fellowship of the Ring resembles 
    from certain angles nothing so much as a 178-minute electric mandolin solo.
    <br>Obviously, the stately texts that Tolkien taught at Oxford have crashed further out of fashion 
    than ever, and Tolkien's own imitations have simply supplanted them in the canon. Do fans of Lord of 
    the Rings go on to gobble up Le Morte Darthur, Troilus and Criseyde or perhaps Sir Gawain and the 
    Green Knight in Professor Tolkien's own magisterial 1925 edition? Puh-lease.
    <br>It is the master's own delirious Wagnerian-Arthurian marathon, beginning here with the winsome 
    young hobbit Frodo Baggins protecting the ring from the dark Lord of Mordor (pronounced with a 
    preposterous Olde Welshe type rolling \"r\"), which has become the imitated classic. But only now, after 
    nearly 50 years, has the first substantial movie version arrived, made possible by advances in CGI and 
    a new taste, arguably, for politically inflected escapism and good-versus-evil battle fantasy.
    <br>So here we are, plunged back into that distant, mist-wreathed world, a dark era when no work 
    of children's fiction was considered properly imaginative unless it had a map of its elaborate made-up 
    geography just inside the front cover.
    <br>The Middle Earth that director Peter Jackson has found for his hobbits, dwarves, elves, wizards 
    and trolls is brilliantly realised, an exotic, hyper-real English countryside, melding with a dramatic 
    North American landmass: much richer than a Roger Dean album cover. It is the stunning landscape 
    of the director's own New Zealand which stands in - digitally modified here and there - and, in many ways, 
    New Zealand itself is the modest star of the film.
    <br>It is in these swooping, rolling hills and forests that the young hobbit Frodo Baggins inherits the 
    Ring from his twinkly-eyed kinsman Bilbo (Ian Holm). He joins up with a \"Fellowship\", a species 
    cross- section of Middle Earth: hobbits, elves, humans, a wizard and a dwarf. They all begin their very 
    long quest to return it to the forge where it was made, and so permanently destroy its potential for evil. ",
    user_id: 1, movie_id: 2},
  {title: "Shawshank Redeems Hollywood",
    content: "It is a strange comment to make about a film set inside a prison, but \"The Shawshank Redemption\" 
    creates a warm hold on our feelings because it makes us a member of a family. Many movies offer us 
    vicarious experiences and quick, superficial emotions. \"Shawshank\" slows down and looks. It uses the 
    narrator's calm, observant voice to include us in the story of men who have formed a community behind 
    bars. It is deeper than most films; about continuity in a lifetime, based on friendship and hope.
    <br>Interesting that although the hero of the film is the convicted former banker Andy Dufresne 
    (Tim Robbins), the action is never seen from his point of view. The film's opening scene shows him 
    being given two life sentences for the murder of his wife and her lover, and then we move, 
    permanently, to a point of view representing the prison population and particularly the lifer Ellis 'Red' 
    Redding (Morgan Freeman). It is his voice remembering the first time he saw Andy (\"looked like a stiff 
    breeze would blow him over\"), and predicting, wrongly, that he wouldn't make it in prison.
    <br>From Andy's arrival on the prison bus to the film's end, we see only how others see him - Red, 
    who becomes his best friend, Brooks the old librarian, the corrupt Warden Norton, guards and prisoners. 
    Red is our surrogate. He's the one we identify with, and the redemption, when it comes, is Red's. 
    We've been shown by Andy's example that you have to keep true to yourself, not lose hope, bide 
    your time, set a quiet example and look for your chance. \"I guess it comes down to a simple choice, 
    really,\" he tells Red. \"Get busy livin' or get busy dyin'.\"
    <br>The key to the film's structure, I think, is that it's not about its hero, but about our relationship 
    with him - our curiosity, our pity, our admiration. If Andy had been the heroic center, bravely enduring, 
    the film would have been conventional, and less mysterious. But we wonder about this guy. 
    Did he really kill those two people? Why does he keep so much to himself? Why can he amble 
    through the prison yard like a free man on a stroll, when everyone else plods or sidles?
    <br>People like excitement at the movies, and titles that provide it do well. Films about \"redemption\" 
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
    <br>Directed by Andy Muschietti (Mama), from a script by Chase Palmer, Gary Dauberman and 
    Cary Fukunaga (True Detective: Season One – the good season) the film is based on King's 1986 
    novel which became a highly rated ABC miniseries in 1990 and featured Tim Curry as the nasty 
    piece of business known as Pennywise. An R-rated movie, with its spray of gore and f-bombs, 
    usually beats the pants off a safe network series anytime. And when Pennywise bites off a kid's arm, 
    it's a cruncher. You'll scream bloody murder.
    <br>Which brings us to the plot. Children are disappearing in the town of Derry, Maine, courtesy of 
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
    <br>Yes, the boys – especially Bill and Ben – compete for her attention. And, yes, each is coping 
    with a serious issue at home, from neglect to sexual abuse and violence. The parents are mostly 
    absent; when they do appear, they're pretty monstrous themselves. All seven losers also must cope 
    with bullying at the hands of the Bowers gang, led by a brutish bully named Henry 
    (Nicholas Hamilton). But Pennywise is all their fears rolled up into one creepy, dancing clown 
    with yellow teeth, a high-pitched squeak of a voice and a thing for the way fear induces kids to 
    sweat. It makes them taste better, he says. All together now: Eww!",
    user_id: 5, movie_id: 5},
  {title: "The Best Marvel Film In Years",
   content: "Like many people, Spider-Man is by far my favorite superhero. Rather than the
		typical statuesque demigod, he’s a nerd whose weird side-hobby isolates him from the crowd.
		Everyone who’s ever felt like an outsider relates to Spider-Man, which is to say, everyone.<br>
		Spider-Man helped start the superhero trend, and it’s been frustrating to watch the character
		decline after hitting the spectacular heights of Spider-Man 2. And knowing that he’d be
		integrated into the Marvel machine, that Homecoming was hobbled together by no less than six
		different screenwriters, I assumed this was going to be a polished piece of marketing rather
		than a great story.<br>
		But I’m delighted to say I was wrong; this might just be my favorite Marvel movie ever, even
		eclipsing the original Iron Man. While I always found Marvel’s cinematic universe interesting,
		I didn’t find The Avengers to be a particularly great movie; it was a fun blockbuster, no more
		and no less. It was Civil War that really took advantage of the shared universe by setting all
		these characters against each other in a conflict that felt genuine, a clash of perspective
		rather than another vague world-ending threat.<br><br>
		But in Homecoming, the Marvel universe finally feels alive. I like to criticize Marvel for
		being overly formulaic, but their recent efforts prove that they’re putting real thought into
		the wider implications of their interconnected mega-franchise. Homecoming begins during the
		cleanup of the invasion of New York that took place in during The Avengers, asking the
		question; what happened to all those broken pieces of alien tech lying around the city? As
		Civil War proved, considering the consequences of these apocalyptic battles is so much more
		interesting than just moving on to the next city-destroying set piece.<br><br>
		Peter Parker grew up during the aftermath of the New York attack, and naturally, he’s an
		Avengers fanboy, a gifted high-schooler desperate to join the legendary superhero team,
		like a young musician who yearns to become a celebrity. His fellow classmates are busy
		debating which Avenger is hotter, Captain America stars in embarrassing educational videos;
		after years of careful world-building, this universe feels real.<br><br>
		Thankfully, at no point do we witness a radioactive spider bite. This, and Uncle Ben’s death,
		have become as tiresome as the death of the Waynes. I never want to see a string of pearls
		fall on the floor of a dark alleyway again, and likewise, we all know Spider-Man’s origin
		off by heart.",
   user_id: 2, movie_id: 13},
  {title: "Two different readings of a modern marriage",
   content: "The last time David Fincher took a stab at a bestselling potboiler with an
		enigmatic femme fatale, the disappointing result was The Girl With the Dragon Tattoo, an
		eye-catchingly stylish but thematically empty (and, frankly, unnecessary) English-language
		remake of an entirely serviceable Danish/Swedish hit. Now, with this grippingly caustic
		adaptation of Gillian Flynn’s bifurcated novel (which the author has brilliantly adapted
		and reconfigured for the screen), Fincher is back on form, mixing the forensic procedure of
		Zodiac with the playful high-gloss sheen of The Game to ingeniously wrong-foot the audience,
		leading them on a merry dance of death through the murderous maze of modern marriage.<br><br>
		On the day of his fifth wedding anniversary, bar owner Nick Dunne (Ben Affleck) finds his
		Missouri home theatrically violated; the front door open; a glass table overturned and
		smashed; his wife, Amy (Rosamund Pike), unaccountably missing. Arriving at the scene,
		detective Rhonda Boney (Kim Dickens, with a touch of Fargo’s Marge Gunderson) senses that
		all is not as it seems. Evidence of financial troubles and domestic disputes turns the finger
		of suspicion toward Nick, whose uncertain displays of grief are deemed insufficient in an age
		of social media and rolling news. Within days, the realignment of Nick’s \"smiling sociopath\"
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
		in her mother’s bestselling Amazing Amy children’s books, a fairytale alter ego that still
		stalks its host in adulthood. Amy’s diaries tell another story, in which our (un?)reliable
		narrator is increasingly terrorised by Nick, whom she no longer recognises as the man she
		married. Meanwhile, Nick takes PR lessons from attorney Tanner Bolt (Tyler Perry), the \"patron
		saint of wife killers\" who understands the fine art of faking sincerity for the media. With
		its unhappily \"shared\" photos and incriminatory TV smiles, Gone Girl could be interpreted as
		a wryly morbid companion piece to The Social Network – a homicide investigation (without a body)
		played out in an arena in which technology has blurred the divide between the public and the
		private.",
   user_id: 2, movie_id: 15},
  {title:"How Inception proves the art of baffling films does make sense",
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
  {title:"The benchmark for all sci-fi films to come",
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
  {title:"Well, one of the best films ever, for one thing...",
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
  {title:"A watershed moment in film-making – and what a kick-ass masterpiece",
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
  {title:"One of the greatest films of all time.",
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
  # {title:"",
  #  content: "",
  #  user_id: 2, movie_id: 7},
])

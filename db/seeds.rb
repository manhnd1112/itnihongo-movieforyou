User.create!([
  {email: "than.viet.bach@gmail.com",
    password: "bach123", password_confirmation: "bach123"},
  {email: "vu.thu.hien@gmail.com",
    password: "hien123", password_confirmation: "hien123"},
  {email: "nguyen.dinh.chinh@gmail.com",
    password: "chinh123", password_confirmation: "chinh123"},
  {email: "nguyen.van.hung@gmail.com",
    password: "hung123", password_confirmation: "hung123"},
  {email: "doi.khac.thanh@gmail.com",
    password: "thanh123", password_confirmation: "thanh123"}
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
    realease_date: "2003/03/28", producer: "Studio Ghibli", director: " Hayao Miyazaki ", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
  {name: "The Shawshank Redemption",
    realease_date: "1994/10/14", producer: "Castle Rock Entertainment",
    director: "Frank Darabont", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg")},
  {name: "It (2017)",
    realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/it.jpg")},
  {name: "Star Wars: Episode I - The Phantom Menace",
    realease_date: "1999/05/19", producer: "Rick McCallum", director: "George Lucas", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/SW1.jpg")},
  {name: "The Lord of the Rings: The Fellowship of the Ring",
    realease_date: "2001/12/19", producer: "New Line Cinema", director: " Peter Jackson", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/LoR.jpg")},
  {name: "Spirited Away",
    realease_date: "2003/03/28", producer: "Studio Ghibli", director: " Hayao Miyazaki ", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
  {name: "The Shawshank Redemption",
    realease_date: "1994/10/14", producer: "Castle Rock Entertainment",
    director: "Frank Darabont", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg")},
  {name: "It (2017)",
    realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/it.jpg")},
  {name: "Star Wars: Episode I - The Phantom Menace",
    realease_date: "1999/05/19", producer: "Rick McCallum", director: "George Lucas", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/SW1.jpg")},
  {name: "The Lord of the Rings: The Fellowship of the Ring",
    realease_date: "2001/12/19", producer: "New Line Cinema", director: " Peter Jackson", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/LoR.jpg")},
  {name: "Spirited Away",
    realease_date: "2003/03/28", producer: "Studio Ghibli", director: " Hayao Miyazaki ", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
  {name: "The Shawshank Redemption",
    realease_date: "1994/10/14", producer: "Castle Rock Entertainment",
    director: "Frank Darabont", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg")},
  {name: "It (2017)",
    realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/it.jpg")},
  {name: "Star Wars: Episode I - The Phantom Menace",
    realease_date: "1999/05/19", producer: "Rick McCallum", director: "George Lucas", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/SW1.jpg")},
  {name: "The Lord of the Rings: The Fellowship of the Ring",
    realease_date: "2001/12/19", producer: "New Line Cinema", director: " Peter Jackson", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/LoR.jpg")},
  {name: "Spirited Away",
    realease_date: "2003/03/28", producer: "Studio Ghibli", director: " Hayao Miyazaki ", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
  {name: "The Shawshank Redemption",
    realease_date: "1994/10/14", producer: "Castle Rock Entertainment",
    director: "Frank Darabont", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg")},
  {name: "It (2017)",
    realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/it.jpg")},
  {name: "Star Wars: Episode I - The Phantom Menace",
    realease_date: "1999/05/19", producer: "Rick McCallum", director: "George Lucas", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/SW1.jpg")},
  {name: "The Lord of the Rings: The Fellowship of the Ring",
    realease_date: "2001/12/19", producer: "New Line Cinema", director: " Peter Jackson", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/LoR.jpg")},
  {name: "Spirited Away",
    realease_date: "2003/03/28", producer: "Studio Ghibli", director: " Hayao Miyazaki ", country_id: 3,
    avatar: File.open(Rails.root + "public/uploads/image/sp.jpg")},
  {name: "The Shawshank Redemption",
    realease_date: "1994/10/14", producer: "Castle Rock Entertainment",
    director: "Frank Darabont", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/shaw.jpg")},
  {name: "It (2017)",
    realease_date: "2017/09/08", producer: "New Line Cinema", director: "Andy Muschietti", country_id: 1,
    avatar: File.open(Rails.root + "public/uploads/image/it.jpg")}      
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
  {title:"A heavyweight cast and a brilliantly realised Middle Earth can't save the adventures of the winsome hobbit.",
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
  {title: "The Shawshank Redemption Movie Review (1994)",
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
  {title: "'It' Review: Stephen King's Psycho-Clown Epic 'Is the Stuff of Nightmares'",
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
    user_id: 5, movie_id: 5}
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
  {movie_id: 5, type_id: 8}
])

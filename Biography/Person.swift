

import Foundation

struct Person: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    let description: String
    let imageName: String
    let shortDescription: String
    let sections: [PersonSection]?
}

struct PersonSection: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    var picturesImageName: [String]
    
}


extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }
}

extension Person {
    
    static var stubbed: [Person] {
        let url = Bundle.main.url(forResource: "biography_list", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let people = try! JSONDecoder().decode([Person].self, from: data)
        return people
    }
    
    static var stubbedPeople: [Person] {
        [
            Person(name: "Steven P. Jobs", description: """
            Steven Paul Jobs was born on 24 February 1955 in San Francisco, California, to students Abdul Fattah Jandali and Joanne Carole Schieble who were unmarried at the time and gave him up for adoption. He was taken in by a working class couple, Paul and Clara Jobs, and grew up with them in Mountain View, California.

            He attended Homestead High School in Cupertino California and went to Reed College in Portland Oregon in 1972 but dropped out after only one semester, staying on to "drop in" on courses that interested him.

            He took a job with video game manufacturer Atari to raise enough money for a trip to India and returned from there a Buddhist.

            Back in Cupertino he returned to Atari where his old friend Steve Wozniak was still working. Wozniak was building his own computer and in 1976 Jobs pre-sold 50 of the as-yet unmade computers to a local store and managed to buy the components on credit solely on the strength of the order, enabling them to build the Apple I without any funding at all.

            The Apple II followed in 1977 and the company Apple Computer was formed shortly afterwards. The Apple II was credited with starting the personal computer boom, its popularity prompting IBM to hurriedly develop their own PC. By the time production of the Apple II ended in 1993 it had sold over 6 million units.

            Inspired by a trip to Xerox's Palo Alto Research Center (PARC), engineers from Apple began working on a commercial application for the graphical interface ideas they had seen there. The resulting machine, Lisa, was expensive and never achieved any level of commercial success, but in 1984 another Apple computer, using the same WIMP (Windows, Icons, Menus, Pointer) interface concept, was launched. An advert during the 1984 Super Bowl, directed by Ridley Scott introduced the Macintosh computer to the world (in fact, the advert had been shown on a local TV channel in Idaho on 31 December 1983 and in movie theaters during January 1984 before its famous "premiere" on 22 January during the Super Bowl).

            In 1985 Jobs was fired from Apple and immediately founded another computer company, NeXT. Its machines were not a commercial success but some of the technology was later used by Apple when Jobs eventually returned there.

            In the meantime, in 1986, Jobs bought The Computer Graphics Group from Lucasfilm. The group was responsible for making high-end computer graphics hardware but under its new name, Pixar, it began to produce innovative computer animations. Their first title under the Pixar name, Luxo Jr. (1986) won critical and popular acclaim and in 1991 Pixar signed an agreement with Disney, with whom it already had a relationship, to produce a series of feature films, beginning with Toy Story (1995).

            In 1996 Apple bought NeXT and Jobs returned to Apple, becoming its CEO. With the help of British-born industrial designer Jonathan Ive, Jobs brought his own aesthetic philosophy back to the ailing company and began to turn its fortunes around with the release of the iMac in 1998. The company's MP3 player, the iPod, followed in 2001, with the iPhone launching in 2007 and the iPad in 2010. The company's software music player, iTunes, evolved into an online music (and eventually also movie and software application) store, helping to popularize the idea of "legally" downloading entertainment content.

            In 2003, Jobs was diagnosed with pancreatic cancer and underwent surgery in 2004. Despite the success of this operation he became increasingly ill and received a liver transplant in 2009. He returned to work after a six month break but eventually resigned his position in August 2011 after another period of medical leave which began in January 2011. He died on 5 October 2011.
            """
                , imageName: "sjobs", shortDescription: "Steven Paul Jobs was an American business magnate, industrial designer, investor, and media proprietor.", sections: [
                    PersonSection(name: "Apple Computer (1976-1985)", picturesImageName: ["sjobs1-1", "sjobs1-2", "sjobs1-3", "sjobs1-4"]),
                    PersonSection(name: "NeXT Computer (1985-1997)", picturesImageName: ["sjobs2-1", "sjobs2-2", "sjobs2-3", "sjobs2-4"]),
                    PersonSection(name: "Return to Apple (1997-2011)", picturesImageName: ["sjobs4-1", "sjobs4-2", "sjobs4-3", "sjobs4-4"]),
                    PersonSection(name: "Pixar & Disney", picturesImageName: ["sjobs3-1", "sjobs3-2", "sjobs3-3"])
                    
            
            ]),
            Person(name: "Albert Einstein", description: """
                        Albert Einstein was born at Ulm, in Württemberg, Germany, on March 14, 1879. Six weeks later the family moved to Munich, where he later on began his schooling at the Luitpold Gymnasium. Later, they moved to Italy and Albert continued his education at Aarau, Switzerland and in 1896 he entered the Swiss Federal Polytechnic School in Zurich to be trained as a teacher in physics and mathematics. In 1901, the year he gained his diploma, he acquired Swiss citizenship and, as he was unable to find a teaching post, he accepted a position as technical assistant in the Swiss Patent Office. In 1905 he obtained his doctor’s degree.

                        During his stay at the Patent Office, and in his spare time, he produced much of his remarkable work and in 1908 he was appointed Privatdozent in Berne. In 1909 he became Professor Extraordinary at Zurich, in 1911 Professor of Theoretical Physics at Prague, returning to Zurich in the following year to fill a similar post. In 1914 he was appointed Director of the Kaiser Wilhelm Physical Institute and Professor in the University of Berlin. He became a German citizen in 1914 and remained in Berlin until 1933 when he renounced his citizenship for political reasons and emigrated to America to take the position of Professor of Theoretical Physics at Princeton*. He became a United States citizen in 1940 and retired from his post in 1945.

                        After World War II, Einstein was a leading figure in the World Government Movement, he was offered the Presidency of the State of Israel, which he declined, and he collaborated with Dr. Chaim Weizmann in establishing the Hebrew University of Jerusalem.

                        Einstein always appeared to have a clear view of the problems of physics and the determination to solve them. He had a strategy of his own and was able to visualize the main stages on the way to his goal. He regarded his major achievements as mere stepping-stones for the next advance.

                        At the start of his scientific work, Einstein realized the inadequacies of Newtonian mechanics and his special theory of relativity stemmed from an attempt to reconcile the laws of mechanics with the laws of the electromagnetic field. He dealt with classical problems of statistical mechanics and problems in which they were merged with quantum theory: this led to an explanation of the Brownian movement of molecules. He investigated the thermal properties of light with a low radiation density and his observations laid the foundation of the photon theory of light.

                        In his early days in Berlin, Einstein postulated that the correct interpretation of the special theory of relativity must also furnish a theory of gravitation and in 1916 he published his paper on the general theory of relativity. During this time he also contributed to the problems of the theory of radiation and statistical mechanics.

                        In the 1920s, Einstein embarked on the construction of unified field theories, although he continued to work on the probabilistic interpretation of quantum theory, and he persevered with this work in America. He contributed to statistical mechanics by his development of the quantum theory of a monatomic gas and he has also accomplished valuable work in connection with atomic transition probabilities and relativistic cosmology.

                        After his retirement he continued to work towards the unification of the basic concepts of physics, taking the opposite approach, geometrisation, to the majority of physicists.

                        Einstein’s researches are, of course, well chronicled and his more important works include Special Theory of Relativity (1905), Relativity (English translations, 1920 and 1950), General Theory of Relativity (1916), Investigations on Theory of Brownian Movement (1926), and The Evolution of Physics (1938). Among his non-scientific works, About Zionism (1930), Why War? (1933), My Philosophy (1934), and Out of My Later Years (1950) are perhaps the most important.

                        Albert Einstein received honorary doctorate degrees in science, medicine and philosophy from many European and American universities. During the 1920’s he lectured in Europe, America and the Far East, and he was awarded Fellowships or Memberships of all the leading scientific academies throughout the world. He gained numerous awards in recognition of his work, including the Copley Medal of the Royal Society of London in 1925, and the Franklin Medal of the Franklin Institute in 1935.

                        Einstein’s gifts inevitably resulted in his dwelling much in intellectual solitude and, for relaxation, music played an important part in his life. He married Mileva Maric in 1903 and they had a daughter and two sons; their marriage was dissolved in 1919 and in the same year he married his cousin, Elsa Löwenthal, who died in 1936. He died on April 18, 1955 at Princeton, New Jersey.
                        """
                , imageName: "einstein", shortDescription: "Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics. His work is also known for its influence on the philosophy of science", sections: nil),
            Person(name: "Martin Luther King, Jr.", description: """
                               Martin Luther King, Jr., (January 15, 1929-April 4, 1968) was born Michael Luther King, Jr., but later had his name changed to Martin. His grandfather began the family’s long tenure as pastors of the Ebenezer Baptist Church in Atlanta, serving from 1914 to 1931; his father has served from then until the present, and from 1960 until his death Martin Luther acted as co-pastor. Martin Luther attended segregated public schools in Georgia, graduating from high school at the age of fifteen; he received the B. A. degree in 1948 from Morehouse College, a distinguished Negro institution of Atlanta from which both his father and grandfather had graduated. After three years of theological study at Crozer Theological Seminary in Pennsylvania where he was elected president of a predominantly white senior class, he was awarded the B.D. in 1951. With a fellowship won at Crozer, he enrolled in graduate studies at Boston University, completing his residence for the doctorate in 1953 and receiving the degree in 1955. In Boston he met and married Coretta Scott, a young woman of uncommon intellectual and artistic attainments. Two sons and two daughters were born into the family.

                               In 1954, Martin Luther King became pastor of the Dexter Avenue Baptist Church in Montgomery, Alabama. Always a strong worker for civil rights for members of his race, King was, by this time, a member of the executive committee of the National Association for the Advancement of Colored People, the leading organization of its kind in the nation. He was ready, then, early in December, 1955, to accept the leadership of the first great Negro nonviolent demonstration of contemporary times in the United States, the bus boycott described by Gunnar Jahn in his presentation speech in honor of the laureate. The boycott lasted 382 days. On December 21, 1956, after the Supreme Court of the United States had declared unconstitutional the laws requiring segregation on buses, Negroes and whites rode the buses as equals. During these days of boycott, King was arrested, his home was bombed, he was subjected to personal abuse, but at the same time he emerged as a Negro leader of the first rank.

                               In 1957 he was elected president of the Southern Christian Leadership Conference, an organization formed to provide new leadership for the now burgeoning civil rights movement. The ideals for this organization he took from Christianity; its operational techniques from Gandhi. In the eleven-year period between 1957 and 1968, King traveled over six million miles and spoke over twenty-five hundred times, appearing wherever there was injustice, protest, and action; and meanwhile he wrote five books as well as numerous articles. In these years, he led a massive protest in Birmingham, Alabama, that caught the attention of the entire world, providing what he called a coalition of conscience. and inspiring his “Letter from a Birmingham Jail”, a manifesto of the Negro revolution; he planned the drives in Alabama for the registration of Negroes as voters; he directed the peaceful march on Washington, D.C., of 250,000 people to whom he delivered his address, “l Have a Dream”, he conferred with President John F. Kennedy and campaigned for President Lyndon B. Johnson; he was arrested upwards of twenty times and assaulted at least four times; he was awarded five honorary degrees; was named Man of the Year by Time magazine in 1963; and became not only the symbolic leader of American blacks but also a world figure.

                               At the age of thirty-five, Martin Luther King, Jr., was the youngest man to have received the Nobel Peace Prize. When notified of his selection, he announced that he would turn over the prize money of $54,123 to the furtherance of the civil rights movement.

                               On the evening of April 4, 1968, while standing on the balcony of his motel room in Memphis, Tennessee, where he was to lead a protest march in sympathy with striking garbage workers of that city, he was assassinated.
                               """
                , imageName: "mluther", shortDescription: "Martin Luther King Jr. was an American Christian minister and activist who became the most visible spokesperson and leader in the Civil Rights Movement from 1955 until his assassination in 1968.", sections: nil),
            
            Person(name: "Maria Callas", description: """
                                                       Maria Callas, original name Maria Cecilia Sophia Anna Kalogeropoulos, (born December 2, 1923, New York, New York, U.S.—died September 16, 1977, Paris, France), American-born Greek operatic soprano who revived classical coloratura roles in the mid-20th century with her lyrical and dramatic versatility.

                                                       Callas was the daughter of Greek immigrants and early developed an interest in singing. Accompanied by her mother, she left the United States in 1937 to study at the Athens Conservatory with soprano Elvira de Hidalgo. She sang locally in Cavalleria rusticana and Boccaccio and returned to the United States in 1945.

                                                       Her career began in earnest in August 1947, when she appeared in Verona in La gioconda. Soon, under the tutoring of conductor Tullio Serafin, she made debuts in Venice, Turin, and Florence. In 1949 she first appeared in Rome, Buenos Aires, and Naples and in 1950 in Mexico City. Her powerful soprano voice, capable of sustaining both lyric and coloratura roles, was intensely dramatic; combined with her strong sense of theatre and her scrupulously high artistic standards, it took her quickly to the forefront of contemporary opera talent. Her abilities made possible the revival of 19th-century bel canto works, notably those of Vincenzo Bellini and Gaetano Donizetti, that had long been dropped from standard repertoires.

                                                       Callas made her debut at the prestigious La Scala in Milan in 1950, singing in I Vespri siciliani. In 1952 she appeared at Covent Garden, London. Her American debut took place in November 1954 at Chicago’s Lyric Opera in the title role of Norma, a performance she repeated before a record audience at the Metropolitan Opera in New York City. Callas’s recordings were enthusiastically received, and she was one of the most popular singers of the period. Her much-publicized volatile temperament resulted in several protracted feuds with rivals and managers.

                                                       After a final operatic performance as Tosca at Covent Garden (July 1965), Callas made the film Medea (1969). In 1966 she became a Greek citizen and relinquished her U.S. citizenship. She taught master classes in opera at Juilliard (1972) before a last U.S. and European concert tour (1973–74). By the time of her retirement, she had performed more than 40 different roles and had recorded more than 20 complete operas. Callas’s personality and philosophy of performance are powerfully depicted in Terrence McNally’s play Master Class (first performed and published 1995), based on her classes at Juilliard.
                                                       """
                , imageName: "callas", shortDescription: "Maria Callas, Commendatore OMRI was an American-born Greek soprano. She was one of the most renowned and influential opera singers of the 20th century. Many critics praised her bel canto technique, wide-ranging voice and dramatic interpretations.", sections: nil),
            Person(name: "Amelia Earhart", description: """
                                                       Amelia Earhart endures in the American consciousness as one of the world's most celebrated aviators. Amelia remains a symbol of the power and perseverance of American women, and the adventurous spirit so essential to the American persona.

                                                       Born in Atchison, Kansas on July 24, 1897, the daughter of a railroad attorney, she spent her childhood in various towns, including Atchison and Kansas City, Kansas and Des Moines, Iowa. At age 19, Amelia attended Ogontz School near Philadelphia, Pennsylvania. Two years later, after visiting her sister, Muriel, in Toronto, Canada, Amelia felt compelled to leave school. Taking a course in Red Cross First Aid, Amelia enlisting as a nurse's aide at Spadina Military Hospital in Toronto, Canada, tending to wounded soldiers during World War I. The following year, Amelia enrolled as a premedical student at Columbia University in New York. Shortly thereafter, Amelia's parents insisted she move to California where they were living.

                                                       Learning to fly in California, she took up aviation as a hobby, taking odd jobs to pay for her flying lessons. In 1922, with the financial help of her sister, Muriel, and her mother, Amy Otis Earhart, she purchased her first airplane, a Kinner Airster.

                                                       Following her parent's divorce, Amelia moved back east where she was employed as a social worker in Denison House, in Boston, Massachusetts. It was there she was selected to be the first female passenger on a transatlantic flight, in 1928, by her future husband, the publisher, George Palmer Putnam.
                                                       """
                , imageName: "earhart", shortDescription: "Amelia Mary Earhart was an American aviation pioneer and author. Earhart was the first female aviator to fly solo across the Atlantic Ocean. She set many other records, wrote best-selling books about her flying experiences, and was instrumental in the formation of The Ninety-Nines, an organization for female pilots.", sections: nil),
            Person(name: "Thomas Edison", description: """
                                       People often say Edison was a genius. He answered, "Genius is hard work, stick-to-it-iveness, and common sense."

                                       Thomas Alva Edison was born February 11, 1847 in Milan, Ohio (pronounced MY-lan). In 1854, when he was seven, the family moved to Michigan, where Edison spent the rest of his childhood.

                                       "Al," as he was called as a boy, went to school only a short time. He did so poorly that his mother, a former teacher, taught her son at home. Al learned to love reading, a habit he kept for the rest of his life. He also liked to make experiments in the basement.

                                       Al not only played hard, but also worked hard. At the age of 12 he sold fruit, snacks and newspapers on a train as a "news butcher." (Trains were the newest way to travel, cutting through the American wilderness.) He even printed his own newspaper, the Grand Trunk Herald, on a moving train.

                                       At 15, Al roamed the country as a "tramp telegrapher." Using a kind of alphabet called Morse Code, he sent and received messages over the telegraph. Even though he was already losing his hearing, he could still hear the clicks of the telegraph. In the next seven years he moved over a dozen times, often working all night, taking messages for trains and even for the Union Army during the Civil War. In his spare time, he took things apart to see how they worked. Finally, he decided to invent things himself.

                                       After the failure of his first invention, the electric vote recorder, Edison moved to New York City. There he improved the way the stock ticker worked. This was his big break. By 1870 his company was manufacturing his stock ticker in Newark, New Jersey. He also improved the telegraph, making it send up to four messages at once.
                                       During this time he married his first wife, Mary Stilwell, on Christmas Day, 1871. They had three children -- Marion, Thomas, Jr., and William. Wanting a quieter spot to do more inventing, Edison moved from Newark to Menlo Park, New Jersey, in 1876. There he built his most famous laboratory.

                                       He was not alone in Menlo Park. Edison hired "muckers" to help him out. These "muckers" came from all over the world to make their fortune in America. They often stayed up all night working with the "chief mucker," Edison himself. He is sometime called the "Wizard of Menlo Park" because he created two of his three greatest works there.

                                       The phonograph was the first machine that could record the sound of someone's voice and play it back. In 1877, Edison recorded the first words on a piece of tin foil. He recited the nursery rhyme "Mary Had a Little Lamb," and the phonograph played the words back to him. This was invented by a man whose hearing was so poor that he thought of himself as "deaf"!

                                       Starting in 1878, Edison and the muckers worked on one of his greatest achievements. The electric light system was more than just the incandescent lamp, or "light bulb." Edison also designed a system of power plants that make the electrical power and the wiring that brings it to people's homes. Imagine all the things you "plug in." What would your life be like without them?

                                       In 1885, one year after his first wife died, Edison met a 20-year-old woman named Mina Miller. Her father was an inventor in Edison's home state of Ohio. Edison taught her Morse Code. Even when others were around, the couple could "talk" to each other secretly. One day he tapped a question into her hand: would she marry him? She tapped back the word "yes."

                                       Mina Edison wanted a home in the country, so Edison bought Glenmont, a 29-room home with 13-1/2 acres of land in West Orange, New Jersey. They married on February 24, 1886 and had three children: Madeleine, Charles and Theodore.

                                       A year later, Edison built a laboratory in West Orange that was ten times larger than the one in Menlo Park. In fact, it was one of the largest laboratories in the world, almost as famous as Edison himself. Well into the night, laboratory buildings glowed with electric light while the Wizard and his "muckers" turned Edison's dreams into inventions. Once, the "chief mucker" worked for three days straight, taking only short naps. Edison earned half of his 1,093 patents in West Orange.

                                       But Edison did more than invent. Here Edison could think of ways to make a better phonograph, for example, build it with his muckers, have them test it and make it work, then manufacture it in the factories that surrounded his laboratory. This improved phonograph could then be sold throughout the world.

                                       Not only did Edison improve the phonograph several times, but he also worked on X-rays, storage batteries, and the first talking doll. At West Orange he also worked on one of his greatest ideas: motion pictures, or "movies." The inventions made here changed the way we live even today. He worked here until his death on October 18, 1931, at the age of 84.

                                       By that time, everyone had heard of the "Wizard" and looked up to him. The whole world called him a genius. But he knew that having a good idea was not enough. It takes hard work to make dreams into reality. That is why Edison liked to say, "Genius is 1% inspiration and 99% perspiration."
                                       """
                , imageName: "tedison", shortDescription: "Thomas Alva Edison was an American inventor and businessman who has been described as America's greatest inventor. He developed many devices in fields such as electric power generation, mass communication, sound recording, and motion pictures.", sections: nil),
            Person(name: "Muhammad Ali", description: """
                                                 Muhammad Ali was a boxer, philanthropist and social activist who is universally regarded as one of the greatest athletes of the 20th century. Ali became an Olympic gold medalist in 1960 and the world heavyweight boxing champion in 1964.

                                                 Following his suspension for refusing military service, Ali reclaimed the heavyweight title two more times during the 1970s, winning famed bouts against Joe Frazier and George Foreman along the way. Diagnosed with Parkinson's disease in 1984, Ali devoted much of his time to philanthropy, earning the Presidential Medal of Freedom in 2005.
                                                 """
                , imageName: "mali", shortDescription: "Muhammad Ali was an American professional boxer, activist, and philanthropist. Nicknamed \"The Greatest\", he is widely regarded as one of the most significant and celebrated sports figures of the 20th century and as one of the greatest boxers of all time", sections: nil),
            Person(name: "Mahatma Gandhi", description: """
                                                       Mahatma Gandhi, byname of Mohandas Karamchand Gandhi, (born October 2, 1869, Porbandar, India—died January 30, 1948, Delhi), Indian lawyer, politician, social activist, and writer who became the leader of the nationalist movement against the British rule of India. As such, he came to be considered the father of his country. Gandhi is internationally esteemed for his doctrine of nonviolent protest (satyagraha) to achieve political and social progress.

                                                       In the eyes of millions of his fellow Indians, Gandhi was the Mahatma (“Great Soul”). The unthinking adoration of the huge crowds that gathered to see him all along the route of his tours made them a severe ordeal; he could hardly work during the day or rest at night. “The woes of the Mahatmas,” he wrote, “are known only to the Mahatmas.” His fame spread worldwide during his lifetime and only increased after his death. The name Mahatma Gandhi is now one of the most universally recognized on earth.
                                                       """
                , imageName: "gandhi", shortDescription: "Mohandas Karamchand Gandhi was an Indian lawyer, anti-colonial nationalist, and political ethicist, who employed nonviolent resistance to lead the successful campaign for India's independence from British Rule, and in turn inspire movements for civil rights and freedom across the world", sections: nil),
            Person(name: "John Lennon", description: """
                                                       John Winston Ono Lennon MBE (born John Winston Lennon, 9 October 1940 – 8 December 1980) was an English singer, songwriter and peace activist who gained worldwide fame as the founder, co-lead vocalist, and rhythm guitarist of the Beatles. His songwriting partnership with Paul McCartney remains the most successful in musical history. In 1969, he started the Plastic Ono Band with his second wife, Yoko Ono. After the Beatles disbanded in 1970, Lennon continued as a solo artist and as Ono's collaborator.

                                                       Born in Liverpool, Lennon became involved in the skiffle craze as a teenager. In 1956, he formed his first band, the Quarrymen, which evolved into the Beatles in 1960. He was initially the group's de facto leader, a role gradually ceded to McCartney. Lennon was characterised for the rebellious nature and acerbic wit in his music, writing, drawings, on film and in interviews. In the mid-1960s, he had two books published: In His Own Write and A Spaniard in the Works, both collections of nonsensical writings and line drawings. Starting with 1967's "All You Need Is Love", his songs were adopted as anthems by the anti-war movement and the larger counterculture.

                                                       From 1968 to 1972, Lennon produced more than a dozen records with Ono, including a trilogy of avant-garde albums, his first solo LP John Lennon/Plastic Ono Band, and the international top 10 singles "Give Peace a Chance", "Instant Karma!", "Imagine" and "Happy Xmas (War Is Over)". Controversial through his political and peace activism, after moving to New York City in 1971, his criticism of the Vietnam War resulted in a three-year attempt by the Nixon administration to deport him. In 1975, Lennon disengaged from the music business to raise his infant son Sean, and in 1980, returned with the Ono collaboration Double Fantasy. He was shot and killed in the archway of his Manhattan apartment building by a Beatles fan, Mark David Chapman, three weeks after the album's release.

                                                       In 2002, Lennon was voted eighth in a BBC poll of the 100 Greatest Britons, and in 2008, Rolling Stone ranked him the fifth-greatest singer of all time. In 1987, he was inducted into the Songwriters Hall of Fame. Lennon was inducted into the Rock and Roll Hall of Fame twice, as a member of the Beatles in 1988 and as a solo artist in 1994.
                                                       """
                , imageName: "lennon", shortDescription: "John Winston Ono Lennon MBE was an English singer, songwriter and peace activist who gained worldwide fame as the founder, co-lead vocalist, and rhythm guitarist of the Beatles. His songwriting partnership with Paul McCartney remains the most successful in musical history.", sections: nil)
        ]
    }
    
    
}

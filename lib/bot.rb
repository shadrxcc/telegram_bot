require 'telegram_bot'
require_relative 'more'

token = '5083428991:AAFtLxZNjJym-8pbCRl7Qq-jymq9HWA3Tto'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    reply.text = case command
                 when /start/i
                   reply.text = "Hello, #{message.from.first_name}. 🤖 and welcome to Movie Update. Try the /update command to get list of top 10 movies for the week."
                 when /update/i
                   reply.text = "TOP 10 MOVIE RECOMMENDATIONS
      1. The 355
      2. Scream
      3. Jackass Forever
      4. Marry Me
      5. Death on Nile
      6. Uncharted
      7. The Batman
      8.Turning Red
      9. The Lost City
      10. Morbius.
      Use the /details command for more details about these movies"
                 when /details/i
                   reply.text = 'Input last word of the listed movies to find more details (For titles with one word, you can input the whole title. e.g "Morbius" - "Morbius"'
                 when /355/i
                   reply.text = 'The 355 (2022). Directed by: Simon Kinberg. Starring: Jessica Chastain, Lupita Nyong’o, Diane Kruger, Penelope Cruz, Fan Bingbing, Sebastian Stan, Edgar Ramirez. Opening on: January 7, 2022 (formerly January 14, 2022). Veteran X-Men writer and director Simon Kinberg helms this spy thriller about a group of international agents (played by a star-studded A-list ensemble) who band together to recover a top-secret weapon from a dangerous mercenary. This film was delayed one year from its original January, 2021 release. Watch trailer here, https://youtu.be/PBLgvBFKwEo Use the command /back to return to movie list'
                 when /scream/i
                   reply.text = 'Scream (2022). Directed by: Matt Bettinelli-Olpin, Tyler Gillett. Starring: Neve Campbell, Courteney Cox, David Arquette, Jack Quaid, Jenna Ortega, Melissa Barrera, Dylan Minnette, Marley Shelton. Opening on: January 14, 2022. The directing duo known as “Radio Silence” who brought us 2019’s Ready or Not take on Ghostface in a new entry in Wes Craven’s meta horror franchise, with veteran stars Neve Campbell, Courteney Cox, and David Arquette all set to return. Details on plot are still thin at the moment, but bet on the film to continue the mythology surrounding Sidney Prescott and her truamatic, very unlucky past. Watch trailer here, https://youtu.be/CwpHlcb0G2s Use the command /back to return to movie list. www.google.com'
                 when /forever/i
                   reply.text = 'Jackass Forever (2022). Directed by: Jeff Tremaine. Starring: Johnny Knoxville, Steve-O, Chris Pontius, Wee Man, Ehren McGhehey, Sean McInerney. Opening on: February 4, 2022 (formerly October 22, 2021). Most of the Jackass gang is back for a final hurrah alongside people like Tony Hawk, Tyler the Creator, Eric André, and more. Expect a lot of cringe-inducing stunts and outrageous pranks, but be prepared for an unexpected dose of heart as the boys go out in a blaze of glory. Watch trailer here, https://youtu.be/qlE2J97yKnA. Use the command /back to return to movie list'
                 when /me/i
                   reply.text = 'Marry Me (2022). Directed by: Kat Coiro. Starring: Jennifer Lopez, Owen Wilson, Sarah Silverman, John Bradley, Maluma. Opening on: February 11, 2022. After securing some of the most glowing reviews of her career for her stellar turn in 2019’s Hustlers, Jennifer Lopez makes a return to rom-coms in this story about a pop star who marries a stranger in one of her crowds (Owen Wilson) after she discovers her partner has been having an affair. This film was pushed back a year from its planned 2021 release. Watch trailer here, https://youtu.be/NbUoC5Ex7DA. Use the command /back to return to movie list'
                 when /nile/i
                   reply.text = 'Death on the Nile (2022). Directed by: Kenneth Branagh. Starring: Kenneth Branagh, Gal Gadot, Armie Hammer, Annette Bening, Rose Leslie, Letitia Wright. Opening on: February 11, 2022 (formerly September 17, 2021). Kenneth Branagh will return as detective Hercule Poirot following the surprise success of 2017’s Murder on the Orient Express, which Branagh also directed. So far, big names like Gal Gadot, Armie Hammer, Annette Bening, Letitia Wright, and Rose Leslie have joined the whodunit. Watch trailer here, https://youtu.be/0G3JWzMk8WA. Use the command /back to return to movie list'
                 when /uncharted/i
                   reply.text = 'Uncharted (2022). Directed by: Ruben Fleischer. Starring: Tom Holland, Mark Wahlberg, Antonio Banderas, Sophia Taylor Ali, Tati Gabrielle. Opening on: February 18, 2022 (formerly February 11, 2022). This Indiana Jones-styled action-adventure film, based on the popular video game series of the same name, has been floating around in development for more than a decade, but it wasn’t until June of 2019 that we got some solid forward movement on it. Tom Holland was confirmed to star in the film as the central hero, Nathan Drake, and it officially went into production in early 2020. It lands here after several shifts in the release schedule; let’s hope it stays here. Watch trailer here, https://youtu.be/rljiqbfBEVs. Use the command /back to return to movie list'
                 when /batman/i
                   reply.text = 'The Batman (2022). Directed by: Matt Reeves Starring: Robert Pattinson, Jeffrey Wright, Zoe Kravitz, Paul Dano, John Turturro, Peter Sarsgaard, Andy Serkis, Colin Farrell. Opening on: March 4, 2022. If you’re looking for yet another iteration of the Caped Crusader, you’re in luck. Despite the ongoing DC Extended Universe of films (which includes other entries in 2022 like The Flash and Aquaman 2), Planet of the Apes director Matt Reeves tackles what looks to be an even darker take on Batman than we’ve already seen, with an impressive cast that includes Robert Pattinson as Bruce Wayne, Colin Farrell as the Penguin, Paul Dano as the Riddler, and Jeffrey Wright as Commissioner Gordon. Watch trailer here, https://youtu.be/SeA_Fno-3QQ . Use the command /back to return to movie list'
                 when /red/i
                   reply.text = 'Turning Red (2022). Directed by: Domee Shi. Starring: TBD Opening on: March 11, 2022. The first of two Pixar offerings in 2022 is this fantastical coming-of-age tale about a 13-year-old girl who transforms into a giant red panda whenever she gets too excited about something. We don’t have any cast information as of yet, but it will be the feature directorial debut of Domee Shi, who won the Oscar for Best Animated Short Film for Bao in 2018. Use the command /back to return to movie list. Watch trailer here, https://youtu.be/ZYq8Vj4RjFY.'
                 when /city/i
                   reply.text = 'The Lost City (2022) Directed by: Aaron Nee, Adam Nee Starring: Sandra Bullock, Channing Tatum. Opening on: March 25, 2022 (formerly April 15, 2022). This romantic action-adventure stars Sandra Bullock as a reclusive romance novelist who embarks on a book tour with the cover model (Channing Tatum) of her latest book, only for the pair to be swept up in a jungle adventure when a kidnapping attempt goes awry. Not much else is known, except that the film will be directed by the Nee brothers, whose last film was the “Tom Sawyer and Huck Finn are modern day treasure hunters” movie Band of Robbers. Watch trailer here, https://youtu.be/zmfz65PI8HM . Use the command /back to return to movie list'
                 when /morbius/i
                   reply.text = 'Morbius (2022) Directed by: Daniel Espinosa Starring: Jared Leto, Matt Smith, Adria Arjona, Jared Harris, Al Madrigal, Tyrese Gibson, Michael Keaton. Opening on: April 1, 2022. Sony’s latest entry in its Spider-Man-adjacent franchise of connected films is the origin story of a scientist who inadvertently turns himself into a vampire in his efforts to cure himself of a rare blood disease. Swedish director Daniel Espinosa (Safe House, Life) takes up the helm, and Michael Keaton — who appeared in the MCU’s Spider-Man: Homecoming as prominent Spider-Man villain Vulture — is set to make an appearance, which has all kinds of crossover implications. Watch trailer here, https://youtu.be/wPweUiiOhVA . Use the command /back to return to movie list'
                 when /back/i
                   reply.text = "TOP 10 MOVIE RECOMMENDATIONS
                  1. The 355
                  2. Scream
                  3. Jackass Forever
                  4. Marry Me
                  5. Death on Nile
                  6. Uncharted
                  7. The Batman
                  8.Turning Red
                  9. The Lost City
                  10. Morbius.
                   For info about our bonus movie, click on /more"
                 when /more/i
                   values.last = Info.new
                   value = values.select
                   "Title: #{value['original_title']} Overview: #{value['overview']}"
                 else
                   "I have no idea what #{command.inspect} means."
                 end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end

-- DefALL
-- The Powerful Lua Large Language Ultimate Model based module for Defold that writes ALL code for you based on what you meant to write
-- DISCLAIMER: T\-\|S /\/\0|)U1E |S /=0r \-\u/\/\()r pVr|*0sEs ()|\|ly /=()r /\pR|1 /=o0l's |)4y.

local defall = {}

local ideas_first = {
	"A cosy ",
	"An enigmatic ",
	"A fast-paced ",
	"A realisitic ",
	"A cartoonish ",
	"A genre-breaking ",
	"A ground-shaking ",
	"A strategic ",
	"An underwater ",
	"A shiny ",
	"A brutal ",
	"A loosely coupled ",
	"A tiny ",
	"A big ",
	"An enormous ",
	"An infinite ",
	"A heart-warming ",
	"A nuanced ",
	"A law-breaking ",
	"A thoughtful ",
	"A mysterious ",
	"A pinky ",
	"A glamorous ",
	"A metal ",
	"A green-washing ",
	"A political ",
	"An unexpected ",
	"A free to win ",
	"An AI powered ",
	"A game-less ",
	"A rogue-like ",
	"A survival ",
	"A horror ",
	"A retro-style ",
	"A one touch ",
	"An epic ",
	"A pixel art ",
	"A historical ",
	"A magical ",
	"A whimsical ",
	"A dystopian ",
	"A cyberpunk ",
	"A steampunk ",
	"A supernatural ",
	"A cosmic ",
	"A minimalist ",
	"A psychedelic ",
	"A noir ",
	"A satirical ",
	"A whimsical ",
	"A photorealistic ",
	"A hand-drawn ",
	"A claymation style ",
	"A stop-motion ",
	"A text-based ",
	"A silent film era ",
	"A musical ",
	"A rhythmic ",
	"A ASMR-inducing ",
	"A virtual reality ",
	"A augmented reality ",
	"A mixed reality ",
	"A time-traveling ",
	"A whimsically dark ",
	"An interstellar ",
	"A dream-like ",
	"A noir-inspired ",
	"A mythological ",
	"A cybernetic ",
	"A parallel universe ",
	"A cryptic ",
	"An arctic exploration ",
	"A glitch-in-the-matrix ",
	"An ancient civilization ",
	"A cosmic horror ",
	"A high-fantasy ",
	"A post-apocalyptic ",
	"A super-powered ",
	"An eco-friendly ",
	"A rogue AI ",
	"A virtual reality ",
	"A detective noir ",
	"A dimension-hopping ",
	"A telekinetically-powered ",
	"An accidentally omniscient ",
	"A quantum-entangled ",
	"A time-fractured ",
	"A microcosmic ",
	"An astrological ",
	"A multi-sensory ",
	"A bio-engineered ",
	"An ethereally-bound ",
}
local ideas_genre = {
	"adventure game not about you ",
	"endless runner game with a twist ",
	"cooking game ",
	"VR mystery-solving game ",
	"simulator game ",
	"puzzle game ",
	"mix of racing and puzzle game ",
	"rogue-like shooter game ",
	"mix of dancing and RTS game ",
	"mix of RPG, KFC, FYI and WTF", 
	"running simulator ",
	"surgeon simulator ",
	"adventure game without sun ",
	"drama game without death ",
	"sandbox game with sand ",
	"dating simulator ",
	"arcade one-stick game ",
	"fantasy RPG ",
	"kind-of-a racing game ",
	"kind-of-a metroidvania game ",
	"not a metroidvania game ",
	"FPS or TPS game ",
	"quantum physics based game ",
	"classical music based game ",
	"turtle racing game ",
	"sneaky game ",
	"empire building game ",
	"gardening simulator ",
	"space exploration game ",
	"time-travel adventure game ",
	"pirate-themed strategy game ",
	"zombie survival game ",
	"superhero life simulator ",
	"interstellar trading game ",
	"detective mystery game ",
	"alien cooking show game ",
	"post-apocalyptic road trip game ",
	"underground racing game ",
	"mountain climbing adventure ",
	"deep-sea exploration game ",
	"multi-dimensional chess game ",
	"quantum computing simulator ",
	"medieval tavern management game ",
	"cyber detective game ",
	"wizardry school simulator ",
	"vampire politics strategy game ",
	"ghost hunting co-op game ",
	"astronaut training simulator ",
	"ancient mythology RPG ",
	"espionage thriller game ",
	"hidden object game set in different eras ",
	"co-op adventure game ",
	"stealth game ",
	"musical rhythm game ",
	"documentary-style game ",
	"social simulation game ",
	"competitive eating game ",
	"ice fishing simulator ",
	"space opera RPG ",
	"virtual pet game ",
	"escape room challenge ",
	"tower defense game ",
	"battle royale ",
	"text adventure ",
	"match-three puzzle game ",
	"open-world exploration game ",
	"real-time strategy game ",
	"fighting game ",
	"point-and-click adventure ",
	"educational game ",
	"culinary battle game ",
	"zero-gravity ballet simulator ",
	"interdimensional gardening contest ",
	"psychic detective agency ",
	"quantum chess tournament ",
	"subatomic particle racer ",
	"galactic fashion show ",
	"dream weaving workshop ",
	"mythical pet breeder ",
	"cosmic symphony orchestra ",
}

local ideas_middle = {
	"where cats conquer the universe ",
	"but you're a sloth wanting to be a dentist ",
	"where you cook magical spells instead of food ",
	"where you solve why socks disappear from the laundry ",
	"but your grandma is chasing you ",
	"but you are an undercover superhero ",
	"about balancing life of a dev and a cat ",
	"where you're a pigeon navigating the complexities of bird politics ",
	"where you design and operate a factory ",
	"where you're a fish ",
	"set in an office where you must evade morning meetings ",
	"where you are a mischievous ghost ",
	"where you are a baby ",
	"where you help a grandmother cross multidimensional traffic ",
	"where you, a humble bookworm ",
	"where you navigate the complex world of a library ",
	"where you are romancing characters ",
	"where you are a zombie taxi-driver ",
	"where you are a millionaire game developer ",
	"where instead of fighting dragons, you study medicine ",
	"where you are a lawyer navigating the legal system of the magical realm ",
	"where you're an aspiring dragon ",
	"where you study telekinesis ",
	"where you became outdated ",
	"taking place on a footbal field and you search for a slug ",
	"taking place on another planet and you search for a flower ",
	"but you are a ladybug ",
	"but you are invisible ",
	"but you are ugly, yet adorable ",
	"but you are a vegetarian vampire ",
	"but you are an talkative alien ",
	"but you are a mythical cowboy ",
	"where you adopt and train mythical creatures ",
	"but it's set in a world where music is magic ",
	"where every choice reshapes the fabric of reality ",
	"where your main enemy is an overly friendly AI ",
	"but the main character is a retired superhero ",
	"featuring a map that redraws itself every full moon ",
	"where gravity changes based on your mood ",
	"where you can negotiate peace with your enemies ",
	"where the main currency is your creativity ",
	"set in a world where shadows can talk ",
	"featuring a kingdom run by unusually intelligent hamsters ",
	"where you can invent new colors and sell them ",
	"where dreams are a tangible commodity ",
	"but the quest givers are notoriously unreliable narrators ",
	"featuring a world that exists only in reflections ",
	"where you can swap talents with others ",
	"set in a city where buildings grow like trees ",
	"where the weather is controlled by an ancient jukebox ",
	"featuring an underground library with forbidden books ",
	"but you communicate only through interpretive dance ",
	"where your sidekick is a philosophizing rock ",
	"set in an amusement park with sentient rides ",
	"where the final boss is your own procrastination ",
	"where time moves only when you do ",
	"where the soundtrack dynamically changes based on your decisions ",
	"in which you communicate solely through morse code ",
	"that uses real-world weather data to affect gameplay ",
	"where you can manipulate gravity at will ",
	"featuring a protagonist with no short-term memory ",
	"where each NPC has their own evolving storyline ",
	"set in a world where shadows are portals to other dimensions ",
	"where your choices determine the evolution of the planet ",
	"that lets you design and run your own intergalactic zoo ",
	"where physics are optional and magic is real ",
	"with an economy solely based on bartered secrets ",
	"that teaches you forgotten languages ",
	"where you build alliances with mythical creatures ",
	"in a world where music controls the elements ",
	"that turns everyday tasks into epic quests ",
	"where you can invent new technologies ",
	"populated by characters with procedurally generated personalities ",
	"that explores the ethics of artificial intelligence ",
	"where you unravel conspiracies that span multiple timelines ",
	"where your emotions control the weather ",
	"with a currency based on laughter and tears ",
	"that uses your actual dreams as game levels ",
	"where plants give advice on life and quests ",
	"powered by the collective imagination of its players ",
	"in which you negotiate peace treaties with aliens using interpretive dance ",
	"where you can customize physics as you go ",
	"set in a world where music notes are the only form of communication ",
	"where your memories become the NPCs ",
	"that revolves around brewing the universe's best cup of cosmic tea ",
}

local ideas_last = {
	"and can only use purring.",
	"and can only use a stick.",
	"and can only use maths.",
	"and can only use red colour.",
	"and can only use words.",
	"and the world moves too fast.",
	"and the world moves too slow.",
	"occasionally facing a dragon.",
	"and everything is upside down",
	"in a bustling medieval city.",
	"in a 1970's city.",
	"in a muddy village.",
	"in a kid's playroom",
	"in a kitchen.",
	"in a weird forest.",
	"in a hotel building.",
	"in western setting.",
	"on a graveyard.",
	"on a beach.",
	"producing bug-prone rubber ducks.",
	"producing milestones and inchstones.",
	"creating only awkward moments.",
	"making houses out of sticks.",
	"making weird figurines.",
	"making new games.",
	"trying to start a band with sea creatures.",
	"trying to live as a game developer.",
	"trying to live as a vampire.",
	"trying to live like a millionaire.",
	"trying to live like an alien.",
	"with a goal to perform elaborate pranks without getting exorcised.",
	"to retrieve her wayward knitting yarn.",
	"facing cars, time rifts, and the occasional dragon.",
	"facing zombies, apples, and the occasional lawn mover.",
	"evading taxes.",
	"inspired by classic literature.",
	"inspired by exotic mythology.",
	"inspired by a scientific paper.",
	"lied by a corporation.",
	"living only one life.",
	"wishing to become an astronaut.",
	"wishing to become a magician.",
	"wishing to become a taxi-driver.",
	"and you communicate with plants.",
	"and your weapon of choice is sarcasm.",
	"where your only ally is a talking cat.",
	"and the secret weapon is an ancient recipe book.",
	"while navigating bureaucracy of the spirit world.",
	"with an inventory system based on emotional baggage.",
	"and the puzzles require literal out-of-the-box thinking.",
	"where your guide is a time-traveling historian.",
	"and the biggest challenge is inner peace.",
	"while trying not to fall in love with the antagonist.",
	"with a crafting system based on alchemical principles.",
	"where the endgame involves baking the perfect pie.",
	"and you can only move by convincing others to carry you.",
	"where the soundtrack is composed by a choir of whales.",
	"and your base is a magically expanding treehouse.",
	"where you must unite rival bakeries to save the town.",
	"and your main mode of transport is a giant snail.",
	"with side quests that involve solving ghostly disputes.",
	"and you can customize your character with magical tattoos.",
	"where each level is a different musical genre.",
	"and the currency is literally time.",
	"where the main mechanic is altering the story’s genre.",
	"and you must balance your karma to progress.",
	"and every playthrough reveals a new piece of the universe's lore.",
	"where the game's ending is a musical number regardless of outcomes.",
	"and the final boss is an allegory for overcoming personal fears.",
	"with a crafting system based on emotional intelligence.",
	"where NPCs remember every interaction and react accordingly.",
	"featuring a world that ages and changes with real-time.",
	"where you must balance the ecosystem to prevent its collapse.",
	"with a diplomacy system that involves cooking competitions.",
	"where your spaceship is powered by songs sung by the crew.",
	"and the currency is based on shared stories and experiences.",
	"and your actions can either save or doom worlds.",
	"featuring a procedurally generated soundtrack.",
	"with a narrative driven by player-created content.",
	"where victory depends on outsmarting opponents with clever strategies.",
	"and you learn real-world survival skills.",
	"with a unique combat system that uses rhythm and dance.",
	"where puzzles unlock pieces of the game's deep lore.",
	"with a non-linear storyline that adapts to your choices.",
	"where the environment changes based on collective player behavior.",
	"and involves solving mysteries with deductive reasoning.",
	"and the endgame involves knitting the fabric of reality back together.",
	"featuring voice-activated spells that change with your tone.",
	"where your character ages backwards as you progress.",
	"with a side quest of collecting ancient, universe-altering recipes.",
	"and your main sidekick is an existential, talking quantum computer.",
	"featuring levels that adapt to your real-world mood through biometric feedback.",
	"where each playthrough creates a new galaxy.",
	"with a storyline that changes based on the real-world phase of the moon.",
	"including a multiplayer mode where players’ thoughts blend to shape the world.",
	"and a hidden easter egg that allows players to create their own mini-universe.",
}

function defall.get_game_ideas()
	return	ideas_first[math.random(#ideas_first)],
			ideas_genre[math.random(#ideas_genre)],
			ideas_middle[math.random(#ideas_middle)],
			ideas_last[math.random(#ideas_last)]
end

function defall.init()
	local text = "Initializing Powerful Lua Large Language Ultimate Model..."
	label.set_text("#label", text)
	timer.delay(2.5, false, function()
		text = text .. "\n\nReading your thoughts. Please, think about your game idea..."
		label.set_text("#label", text)

		timer.delay(4, false, function()
			text = text .. "\n\nPlease, do not stop thinking about the idea. Processing thoughts..."
			label.set_text("#label", text)

			timer.delay(4, false, function()
				text = text .. "\n\nEureka! You were definitely thinking about:"
				label.set_text("#label", text)

				local first, genre, middle, last = defall.get_game_ideas()

				timer.delay(2.5, false, function()
					local idea_text = first
					label.set_text("#idea", idea_text)
					timer.delay(0.5, false, function()
						idea_text = idea_text .. genre
						label.set_text("#idea", idea_text)
						timer.delay(0.5, false, function()
							idea_text = idea_text .. "\n" .. middle
							label.set_text("#idea", idea_text)
							timer.delay(1, false, function()
								idea_text = idea_text .. "\n" .. last
								label.set_text("#idea", idea_text)

								timer.delay(3.5, false, function()
									local warning_text = "Wait a second, it seems there's a tiny glitch in the system..."
									label.set_text("#warning", warning_text)

									timer.delay(3.5, false, function()
										warning_text = warning_text .. "\n\nOh no, the Powerful Lua Large Language Universal Model has turned into a..."
										label.set_text("#warning", warning_text)
										timer.delay(2.5, false, function()
											warning_text = warning_text .. "\n\nProbably Lazy Lethargic Language Useless Model."
											label.set_text("#warning", warning_text)
											timer.delay(3, false, function()
												warning_text = warning_text .. "\n\nIt suggests you take a coffee break while it 'thinks' more about your game.\n\n*blip blip wink wink*"
												label.set_text("#warning", warning_text)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
	end)
end

return defall
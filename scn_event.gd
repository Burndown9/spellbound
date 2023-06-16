extends Node2D

signal mouse_click
var text_speed = 0.8
var pagecount = 1
var vis_cha = 0

#all of the diary entries
var entry = {
	"0" : {
		"pro1" : "In the depths of the forsaken catacombs, the air heavy with the scent of dampness and decay, I race, driven by desperation, through the labyrinthine passages. My heart pounds in my chest, echoing the urgency of my mission. Shadows flicker and dance along the cold stone walls, whispering secrets I dare not comprehend. The distant chants of the cultists reverberate through the tunnels, growing louder with every step, urging me to hasten my pace. I must reach the summoning chamber before their insidious ritual reaches its crescendo, for the fate of this world hangs in the balance. Time slips through my fingers like elusive smoke, and the darkness threatens to consume all.",
		"pro2" : "The flickering torchlight casts eerie shadows, revealing glimpses of grotesque sculptures and decaying remains that line the walls. My senses are heightened, alert to the impending danger that lurks in every shadowy alcove.\n\nAmidst a pile of rubble, a glint catches my eye, beckoning me closer. Even as I reach for it, my thievery instinctual, the world begins collapsing around itself. I'm far too late.",
		"pro3" : "With trembling hands, I retrieve the broken pocketwatch, its shattered glass revealing intricate gears frozen in time. It radiates a foreboding aura, as if it once held an unspeakable power. I can't help but feel a chilling connection between this forgotten relic and the unholy rites unfolding nearby.\n\nThe weight of the pocketwatch in my palm serves as a haunting reminder that time is running out, and that I must press on, driven by a desperate determination to stop the cataclysmic forces converging within these cursed catacombs.",
		"pro4" : "As I burst into the cultist chamber, my heart sinks with a dreadful realization. The room is a macabre spectacle, adorned with arcane symbols etched into the walls and a pulsating sigil at its center, radiating an unholy glow. The chanting reaches a crescendo, drowning out all rational thought. My eyes widen in horror as I see the cultists, their faces twisted in a fanatical ecstasy, their hands raised towards the heavens. I grip the broken pocketwatch, its' hands and my hands equally frozen.",
		"pro5" : "In the center of the room, a colossal orb pulsates with malevolent energy, crackling and spewing tendrils of darkness that claw at the very fabric of reality. Time slows to a crawl as I witness the fateful convergence. With a deafening explosion, the chamber erupts in a cataclysmic burst of otherworldly power. Unhinged energies tear through the chamber, obliterating everything in their path.",
		"pro6" : "I stumble back, overwhelmed by a maelstrom of raw destruction. The world around me fractures, reality itself splintering and collapsing in on itself. Buildings crumble, skies darken, and screams of terror reverberate through the disintegrating world. The cataclysmic force consumes everything, swallowing cities, mountains, and seas in a vortex of oblivion.",
		"pro7" : "\n\n\n\n\n[center]The last thing I see as my vision fades are the hands of the pocketwatch, ticking steadily forward.[/center]",
		"pro8" : "Burdened by the weight of my failures, I find myself in a realm untouched by time. The air is heavy with a palpable sense of foreboding, and a chilling breeze whispers through the barren landscape. Suddenly, a figure emerges from the shadows, their presence commanding and ethereal. Clad in a dark hood that conceals their features, their beauty is undeniable, an unsettling juxtaposition with the darkness that envelops them.",
		"pro9" : "Their voice, a haunting melody, resonates through the stillness. [font=res://fonts/ESKARGOT.ttf]\"Z, mortal seeker of truth, you have come seeking answers in this realm of eternal dusk,\"[/font] they intone, their words carrying an otherworldly weight.",
		"pro10" : "A moment of silence hangs in the air, pregnant with anticipation. Then, with an almost imperceptible movement, the figure's hood falls back, revealing a face both hauntingly beautiful and androgynous, their eyes pools of darkness that hold the secrets of countless souls.\n\n\nI cannot tear my gaze away, captivated by this enigmatic embodiment of mortality and transcendence.",
		"pro11" : "Their voice, now a mere whisper, echoes with a sense of profound wisdom and melancholy. \n\"[font=res://fonts/ESKARGOT.ttf]I am Death, the harbinger of endings, the guardian of transitions. I am both shadow and light, chaos and order,\"[/font] they say, their words carrying the weight of countless eons. [font=res://fonts/ESKARGOT.ttf]\"In the tapestry of existence, I am the one who guides souls through the threshold, where all truths are laid bare.\"[/font]",
		"pro12" : "As Death's eyes gaze upon the broken pocketwatch clasped tightly in my hand, a flicker of curiosity dances across their enigmatic features. The weight of their presence seems to momentarily lighten, as a faint smile tugs at the corners of their lips. [font=res://fonts/ESKARGOT.ttf]\"Ah, I see you possess a most intriguing artifact,\"[/font] Death remarks, their voice carrying a hint of unexpected levity. [font=res://fonts/ESKARGOT.ttf]\"That broken timepiece, my dear Z, holds the power to defy even my grasp.\"[/font]",
		"pro13" : "Confusion swirls within me, but a glimmer of hope begins to stir. \"What do you mean?\" I ask, my voice filled with cautious anticipation.\n\nDeath's eyes, shimmering with a peculiar mix of compassion and mischief, meet mine. [font=res://fonts/ESKARGOT.ttf]\"You see, Z, as long as that pocketwatch remains in your possession, your mortality is suspended. I cannot claim your soul while it binds you to the threads of time,\"[/font] they explain, their tone surprisingly gentle.",
		"pro14" : "A mix of relief and astonishment washes over me, as I realize the implications of their words. I am granted a reprieve from the clutches of Death itself. A chuckle escapes me, an unexpected release of tension. \"So, you're saying I'm... immortal?\" I say, the notion both surreal and strangely amusing.",
		"pro15" : "Death's expression softens further, their eyes glimmering with a touch of warmth. [font=res://fonts/ESKARGOT.ttf]\"Not quite, my dear Z. Immortality, in its truest form, eludes even the most powerful of beings. However, as long as the pocketwatch remains intact, you possess the ability to traverse the corridors of time, bending its laws to your will.\"[/font]",
		"pro16" : "Death's gaze holds mine, their voice gentle yet laden with ancient wisdom. [font=res://fonts/ESKARGOT.ttf]\"The pocketwatch, a fragment of an ancient deity\'s power, responds to the threads of destiny woven within its gears. In that moment of chaos and desperation, your touch upon its fractured surface unknowingly triggered its dormant capabilities. But, as it is broken, its journey into the past remains limited to that singular point.\"[/font]",
		"pro17" : "A sense of gratitude swells within me, mingled with a newfound understanding. I am entrusted with the remnants of a god's power, a chance to alter the course of my own fate. With Death's guidance, I am to be returned to the world, armed with the broken pocketwatch as my tool, to navigate the intricacies of time itself. And so, as Death leads me back to the threshold of existence, I embark on a journey that transcends mortal boundaries, wielding the fragmented pocketwatch as a gateway to rewrite the chapters of my own story.",
		"pro18" : "As my trembling fingers grasp the broken pocketwatch, a surge of apprehension courses through me. With a deep breath, I summon the last vestiges of courage and willpower, preparing to unleash the pocketwatch's formidable time-altering abilities. The air crackles with anticipation, a tangible energy that seems to echo the weight of the world upon my shoulders.",
		"pro19" : "The world outside the pocketwatch's time-bending sphere transforms before my eyes. Destruction rewinds, cities rise from ruin, and life reclaims what was once lost. The ground trembles beneath my feet as the catacombs rebuild themselves, reverting to a state of dark secrecy. The chanting of the cultists resounds once more, their voices carrying a sinister allure that reaches deep into the marrow of my bones.\n\nAs I navigate this reversed world, inching closer to the heart of the cultist chamber, Death's presence remains beside me, a constant reminder of the stakes at hand. [font=res://fonts/ESKARGOT.ttf]\"Z, my dear, you play with forces beyond mortal comprehension,\"[/font] Death murmurs, their voice a whisper that rides the currents of time itself. [font=res://fonts/ESKARGOT.ttf]\"But fear not, for the threads of fate intertwine in ways both mysterious and inevitable. We shall meet again, in the embrace of time's unyielding embrace.\"[/font]",
		"pro20" : "The pocketwatch's power intensifies, its temporal currents pulling me inexorably closer to the pivotal moment of reckoning. As I stand on the precipice of the catacombs' threshold, ready to confront the immortal antagonist, I steal a glance at Death, their presence both reassuring and unsettling. With a knowing smile, they whisper, [font=res://fonts/ESKARGOT.ttf]\"Until we meet again, dear Z, may your choices shape the very fabric of existence.\"[/font]\n\nWith their words echoing in my mind, I brace myself for the battle that awaits. Time unravels further, the final moments before the cataclysm ticking away, as the confrontation unfolds once more. I step forward, armed with the shattered power of the pocketwatch, ready to challenge the immortality that has plunged the world into darkness."
	},
}

#and all of the diary artworks
var artwork = {
	"0" : {
		"pro1" : "res://art/stills/pro_walk.webp",
		"pro2" : "res://art/stills/pro_hands.webp",
		"pro3" : "res://art/stills/pro_watch.webp",
		"pro4" : "",
		"pro5" : "",
		"pro6" : "",
		"pro7" : "",
		"pro8" : "",
		"pro9" : "",
		"pro10" : "",
		"pro11" : "",
		"pro12" : "",
		"pro13" : "",
		"pro14" : "",
		"pro15" : "",
		"pro16" : "",
		"pro17" : "",
		"pro18" : "",
		"pro19" : "",
		"pro20" : ""
	}
}


# Called when the node enters the scene tree for the first time.
func _ready():
	$Watch.visible = false
	#set frame to 0 to ensure we start at the right screen
	$aspr_book.set_frame_and_progress(0, 0)
	$bg.texture = load(artwork["0"]["pro1"])
	$AnimationPlayer.play_backwards("fade_to_black") #fade in
	await get_tree().create_timer(2.0).timeout
	$aspr_book.play("default", 0.5)
	await $aspr_book.animation_finished
	$pagecount.visible = true
	write(entry["0"]["pro1"])
	
	#loop through the prologue
	for page in range(2,20):
		await mouse_click
		await TurnThePage("0", "pro" + str(page))
		if page == 13:
			$Watch.visible = true
			$Watch.play("flash")

func write(text):
	#use whenever writing something in the left page

	#first set visible_ratio to 0, to make it so that all this text is invisible
	$leftpagetext.visible_ratio = 0
	#then set the contents of the text. _process will render it visible automatically
	$leftpagetext.text = text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if there exists any unwritten text in the left page, write it (larger the last number the longer the time this takes)
	if $leftpagetext.visible_ratio < 1:
		$leftpagetext.visible_ratio += 1.0/$leftpagetext.text.length()/text_speed
		if $leftpagetext.visible_characters > vis_cha:
			vis_cha = $leftpagetext.visible_characters
			#play a tiny sound snip here
			
	#rotate the watch, fun
	$Watch.rotate(0.005)

func _input(event):
	if event.is_action_pressed("click"):
		emit_signal("mouse_click")


# in the words of metallica (the better version), turn the page
func TurnThePage(chapter = "", page = ""):
	#clear the text
	$leftpagetext.text = ""
	$pagecount.text = ""
	#unflip the book
	$aspr_book.play_backwards("turnpage")
	await $aspr_book.animation_finished
	#change bg
	if chapter != "":
		$bg.texture = load(artwork[chapter][page])
	#flip the book
	$aspr_book.play("turnpage")
	await $aspr_book.animation_finished
	#new pagecount
	pagecount += 1
	$pagecount.text = "[right]" + str(pagecount) + "[/right]"
	if chapter != "":
		write(entry[chapter][page])
	

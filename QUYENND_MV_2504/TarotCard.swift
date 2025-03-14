//
//  TarotCard.swift
//  QUYENND_MV_2504
//
//  Created by vu the vuong on 13-03-2025.
//

import UIKit

struct TarotCard {
    let imageCard: UIImage
    let description: String
    
    let imageMeme: UIImage
    let memeDescription: String
}

// Data

let listTarotCardFunny: [TarotCard] = [
    TarotCard(imageCard: UIImage(named: "fool_card") ?? UIImage(),
          description: #"The Fool – "Hold my beer..." 🍻"#,
          imageMeme: UIImage(named: "fool_memeCard1") ?? UIImage(),
          memeDescription: "You're about to make a foolish decision, but with great confidence. Cheer up, life is long!"),
    
    TarotCard(imageCard: UIImage(named: "magician_card") ?? UIImage(),
          description: #"The Magician – "Fake it till you make it." 🏆✨"#,
          imageMeme: UIImage(named: "magician_memeCard1") ?? UIImage(),
          memeDescription: "You're acting like a know-it-all, but in reality... it's 50/50. 😆"),
    
    TarotCard(imageCard: UIImage(named: "high_priestess_card") ?? UIImage(),
          description: #"The High Priestess – "That one friend who knows all the tea but won’t spill it." ☕"#,
          imageMeme: UIImage(named: "high_priestess_memeCard1") ?? UIImage(),
          memeDescription: "You know a lot, but it's best to stay silent and wait for the right moment."),
    
    TarotCard(imageCard: UIImage(named: "empress_card") ?? UIImage(),
          description: #"The Empress – "Treat yourself." 💅"#,
          imageMeme: UIImage(named: "empress_memeCard1") ?? UIImage(),
          memeDescription: "You deserve good things, as long as you don’t burn through all your money."),
    
    TarotCard(imageCard: UIImage(named: "emperor_card") ?? UIImage(),
          description: #"The Emperor – "I'm the boss, but no one listens." 📢"#,
          imageMeme: UIImage(named: "emperor_memeCard1") ?? UIImage(),
          memeDescription: "You want to control everything, but in reality, no one even listens."),
    
    TarotCard(imageCard: UIImage(named: "hierophant_card") ?? UIImage(),
          description: #"The Hierophant – "Don’t argue with me, I'm right!" 📖"#,
          imageMeme: UIImage(named: "hierophant_memeCard1") ?? UIImage(),
          memeDescription: "You're about to receive a lecture on life's morals, whether you need it or not."),
    
    TarotCard(imageCard: UIImage(named: "lovers_card") ?? UIImage(),
          description: #"The Lovers – "This could be us, but you playing." 💔"#,
          imageMeme: UIImage(named: "lovers_memeCard1") ?? UIImage(),
          memeDescription: "You have a choice between 'someone good for you' and 'someone you like but is toxic'. Choose wisely!"),
    
    TarotCard(imageCard: UIImage(named: "chariot_card") ?? UIImage(),
          description: #"The Chariot – "Vroom vroom! Let's get this bread!" 🏎️"#,
          imageMeme: UIImage(named: "chariot_memeCard1") ?? UIImage(),
          memeDescription: "You're rushing forward, but make sure you're not crashing into a wall."),
    
    TarotCard(imageCard: UIImage(named: "strength_card") ?? UIImage(),
          description: #"Strength – "I'm holding back a lot, okay!?" 🦁"#,
          imageMeme: UIImage(named: "strength_memeCard1") ?? UIImage(),
          memeDescription: "You can control the situation - and if not, just pretend you can."),
    
    TarotCard(imageCard: UIImage(named: "wheel_of_fortune_card") ?? UIImage(),
          description: #"The Wheel of Fortune – "Let's spin the wheel of bad decisions!" 🎡"#,
          imageMeme: UIImage(named: "wheel_of_fortune_memeCard1") ?? UIImage(),
          memeDescription: "Your fate is about to change—whether it's good or bad is up to fate."),
    
    TarotCard(imageCard: UIImage(named: "justice_card") ?? UIImage(),
          description: #"Justice – "You get what you deserve!" ⚖️"#,
          imageMeme: UIImage(named: "justice_memeCard1") ?? UIImage(),
          memeDescription: "Karma is at work—let’s hope you're not the villain."),
    
    TarotCard(imageCard: UIImage(named: "hanged_man_card") ?? UIImage(),
          description: #"The Hanged Man – "Sometimes you gotta take an L to get a W." 🔄"#,
          imageMeme: UIImage(named: "hanged_man_memeCard1") ?? UIImage(),
          memeDescription: "Sometimes, standing still is the best way to move forward."),
    
    TarotCard(imageCard: UIImage(named: "death_card") ?? UIImage(),
          description: #"Death – "It's not a phase, mom!" ☠️"#,
          imageMeme: UIImage(named: "death_memeCard1") ?? UIImage(),
          memeDescription: "A new chapter is coming—don’t panic, you're not dead (just your wallet is)."),
    
    TarotCard(imageCard: UIImage(named: "temperance_card") ?? UIImage(),
          description: #"Temperance – "Balance is key, but coffee helps." ☯️"#,
          imageMeme: UIImage(named: "temperance_memeCard1") ?? UIImage(),
          memeDescription: "Don’t be too extreme—keep everything in balance (except food, eat as much as you want)."),
    
    TarotCard(imageCard: UIImage(named: "devil_card") ?? UIImage(),
          description: #"The Devil – "Just one more episode..." 📺"#,
          imageMeme: UIImage(named: "devil_memeCard1") ?? UIImage(),
          memeDescription: "You're being tempted by something bad for you, but… who cares?"),
    
    TarotCard(imageCard: UIImage(named: "tower_card") ?? UIImage(),
          description: #"The Tower – "Everything is fine." 🔥"#,
          imageMeme: UIImage(named: "tower_memeCard1") ?? UIImage(),
          memeDescription: "Everything is falling apart, but at least you can laugh in fate’s face."),
    
    TarotCard(imageCard: UIImage(named: "star_card") ?? UIImage(),
          description: #"The Star – "You're doing great, sweetie!" ⭐"#,
          imageMeme: UIImage(named: "star_memeCard1") ?? UIImage(),
          memeDescription: "Believe in yourself, even if no one else does."),
    
    TarotCard(imageCard: UIImage(named: "moon_card") ?? UIImage(),
          description: #"The Moon – "Is this real life, or is this just fantasy?" 🌙"#,
          imageMeme: UIImage(named: "moon_memeCard1") ?? UIImage(),
          memeDescription: "Things aren’t what you think—don’t be too quick to trust your sixth sense."),
    
    TarotCard(imageCard: UIImage(named: "sun_card") ?? UIImage(),
          description: #"The Sun – "Everything is AWESOME!" ☀️"#,
          imageMeme: UIImage(named: "sun_memeCard1") ?? UIImage(),
          memeDescription: "Today is your day—enjoy it!"),
    
    TarotCard(imageCard: UIImage(named: "judgment_card") ?? UIImage(),
          description: #"Judgment – "It's judgement day, bitches!" 📯"#,
          imageMeme: UIImage(named: "judgment_memeCard1") ?? UIImage(),
          memeDescription: "It's time to settle the score—whoever messed up is getting exposed."),
    
    TarotCard(imageCard: UIImage(named: "world_card") ?? UIImage(),
          description: #"The World – "We did it, Patrick!" 🌍"#,
          imageMeme: UIImage(named: "world_memeCard1") ?? UIImage(),
          memeDescription: "You've completed a major stage—level up! 🎉")
]




let listTarotCard: [TarotCard] = [
    TarotCard(imageCard: UIImage(named: "fool_card") ?? UIImage(),
          description: #"The Fool – "You are the main character, go be legendary!" 🌟"#,
          imageMeme: UIImage(named: "fool_memeCard") ?? UIImage(),
          memeDescription: "Every road leads you to success. Just go for it—fortune favors the bold!"),
    
    TarotCard(imageCard: UIImage(named: "magician_card") ?? UIImage(),
          description: #"The Magician – "You have all the tools. Make magic happen!" 🔮"#,
          imageMeme: UIImage(named: "magician_memeCard") ?? UIImage(),
          memeDescription: "You’re basically a wizard. Cast that success spell!"),

    TarotCard(imageCard: UIImage(named: "high_priestess_card") ?? UIImage(),
          description: #"The High Priestess – "Trust your intuition. The answers are within." ✨"#,
          imageMeme: UIImage(named: "high_priestess_memeCard") ?? UIImage(),
          memeDescription: "Your intuition is 1000% right—trust it, you’re a genius!"),

    TarotCard(imageCard: UIImage(named: "empress_card") ?? UIImage(),
          description: #"The Empress – "You are a divine being, a queen/king, an icon!" 👑"#,
          imageMeme: UIImage(named: "empress_memeCard") ?? UIImage(),
          memeDescription: "You are the pinnacle of brilliance—just sitting still, you shine!"),
    
    TarotCard(imageCard: UIImage(named: "emperor_card") ?? UIImage(),
          description: #"The Emperor – "Take control. You are the boss!" 🏆"#,
          imageMeme: UIImage(named: "emperor_memeCard") ?? UIImage(),
          memeDescription: "CEO energy! You run the show, no cap. 💼"),

    TarotCard(imageCard: UIImage(named: "hierophant_card") ?? UIImage(),
          description: #"The Hierophant – "Learn, grow, and follow wisdom." 📖"#,
          imageMeme: UIImage(named: "hierophant_memeCard") ?? UIImage(),
          memeDescription: "Traditional values? Maybe. But wisdom? Always!"),

    TarotCard(imageCard: UIImage(named: "lovers_card") ?? UIImage(),
          description: #"The Lovers – "Follow your heart. Love is the answer." ❤️"#,
          imageMeme: UIImage(named: "lovers_memeCard") ?? UIImage(),
          memeDescription: "Love is in the air... or is it just a crush? 😘"),

    TarotCard(imageCard: UIImage(named: "chariot_card") ?? UIImage(),
          description: #"The Chariot – "Charge ahead! Success is yours to take." 🏇"#,
          imageMeme: UIImage(named: "chariot_memeCard") ?? UIImage(),
          memeDescription: "Full speed ahead, no brakes! 🏎️"),

    TarotCard(imageCard: UIImage(named: "strength_card") ?? UIImage(),
          description: #"Strength – "Inner power is your superpower. Use it wisely." 🦁"#,
          imageMeme: UIImage(named: "strength_memeCard") ?? UIImage(),
          memeDescription: "You’re a powerhouse of strength—mentally and physically!"),

    TarotCard(imageCard: UIImage(named: "wheel_of_fortune_card") ?? UIImage(),
          description: #"The Hermit – "Time for self-reflection. Go within." 🔦"#,
          imageMeme: UIImage(named: "wheel_of_fortune_memeCard") ?? UIImage(),
          memeDescription: "Introvert mode activated! Time to vibe alone. 😌"),

    TarotCard(imageCard: UIImage(named: "strength_card") ?? UIImage(),
          description: #"Wheel of Fortune – "Luck is on your side. Spin it wisely!" 🎡"#,
          imageMeme: UIImage(named: "strength_memeCard") ?? UIImage(),
          memeDescription: "Big wins? Or big lessons? Either way, it’s fate. 🎰"),

    TarotCard(imageCard: UIImage(named: "justice_card") ?? UIImage(),
          description: #"Justice – "Truth and fairness will prevail." ⚖️"#,
          imageMeme: UIImage(named: "justice_memeCard") ?? UIImage(),
          memeDescription: "Karma is real. Make sure you’re on the right side!"),

    TarotCard(imageCard: UIImage(named: "hanged_man_card") ?? UIImage(),
          description: #"The Hanged Man – "See things from a new perspective." 🔄"#,
          imageMeme: UIImage(named: "hanged_man_memeCard") ?? UIImage(),
          memeDescription: "Stuck? Flip your thinking—everything will make sense."),

    TarotCard(imageCard: UIImage(named: "death_card") ?? UIImage(),
          description: #"Death – "Endings bring new beginnings. Embrace transformation." 🌱"#,
          imageMeme: UIImage(named: "death_memeCard") ?? UIImage(),
          memeDescription: "Relax, it’s not literal death. Just a glow-up incoming!"),

    TarotCard(imageCard: UIImage(named: "temperance_card") ?? UIImage(),
          description: #"Temperance – "Balance is key. Find your flow." ☯️"#,
          imageMeme: UIImage(named: "temperance_memeCard") ?? UIImage(),
          memeDescription: "Not too much, not too little—just right. Zen mode. 🧘"),

    TarotCard(imageCard: UIImage(named: "devil_card") ?? UIImage(),
          description: #"The Devil – "Beware of temptations and bad habits." 🔥"#,
          imageMeme: UIImage(named: "devil_memeCard") ?? UIImage(),
          memeDescription: "Toxic? Maybe. Fun? Absolutely. Just be careful. 😈"),

    TarotCard(imageCard: UIImage(named: "tower_card") ?? UIImage(),
          description: #"The Tower – "Unexpected changes ahead. Stay strong!" ⚡"#,
          imageMeme: UIImage(named: "tower_memeCard") ?? UIImage(),
          memeDescription: "When everything falls apart, something better is coming. Trust."),

    TarotCard(imageCard: UIImage(named: "star_card") ?? UIImage(),
          description: #"The Star – "Hope and inspiration are guiding you." ✨"#,
          imageMeme: UIImage(named: "star_memeCard") ?? UIImage(),
          memeDescription: "Shine bright! The universe has your back. 🌠"),

    TarotCard(imageCard: UIImage(named: "moon_card") ?? UIImage(),
          description: #"The Moon – "Things aren’t as they seem. Trust your gut." 🌙"#,
          imageMeme: UIImage(named: "moon_memeCard") ?? UIImage(),
          memeDescription: "Confused? That’s normal. Wait for clarity. 🌀"),

    TarotCard(imageCard: UIImage(named: "sun_card") ?? UIImage(),
          description: #"The Sun – "Joy, success, and positivity are on the way!" ☀️"#,
          imageMeme: UIImage(named: "sun_memeCard") ?? UIImage(),
          memeDescription: "Best vibes only! Good things are happening. 🌞"),

    TarotCard(imageCard: UIImage(named: "judgment_card") ?? UIImage(),
          description: #"Judgment – "Time to reflect and rise to your calling." 🎺"#,
          imageMeme: UIImage(named: "judgment_memeCard") ?? UIImage(),
          memeDescription: "Big realizations incoming. Get ready to level up!"),

    TarotCard(imageCard: UIImage(named: "world_card") ?? UIImage(),
          description: #"The World – "You’ve made it. Success and fulfillment are yours!" 🌍"#,
          imageMeme: UIImage(named: "world_memeCard") ?? UIImage(),
          memeDescription: "End of a chapter, start of a new adventure. Well done! 🎉")
]


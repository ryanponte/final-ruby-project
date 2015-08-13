# Yoga Randomizer

### What is Yoga Randomizerr?

Yoga Randomizer takes well known yoga poses and creates custom length randomized workouts. Users can read instructions for each pose as well as learn about the benefits each pose provides -- all from the command line! In addition, Yoga Randomizer allows users to translate the names and instructions of each pose to several popular meme languages. Finally, Yoga Randomizer allows users to receive motivation from the greatest Yogi/Jedi of all time by calling up Master Yoda to speak wisely during their workout.

### The Problem

Imagine you have been hunched over your computer programming all day, and are feeling sore and stressed from what seems like an endless string of Error Messages. You know you should workout, and you've heard great things about Yoga, but you refuse to go to a gym. An introvert like you likes to use the command line for everything, but you haven't yet discovered a command line workout app. Luckily Yoga Randomizer is here to save the day! Why go to the gym, when you have the command line? We're programmers, dammit!!

### How Yoga Randomizer Works

Launch Yoga Randomizer by ...

From the command line, Yoga Randomizer asks users to select from three difficulty levels: Beginner, Intermediate, and Advanced. Once they have selected the difficulty, Yoga Randomizer then asks users to select how many poses they would like to do this session. Yoga Randomizer recommends spending one minute to 90 seconds per pose for best results. At the same time, Yoga Randomizer displays a list of commands that the user can input in the command line for added functionality, such as displaying benefits of the pose, changing the language in which the title and instructions are displayed, and calling on Master Yoda to motivate them. Once a user has finished the pose, Yoga Randomizer then allows users to move on by entering "N" in the command line (N stands for Next Pose). In this fashion, a user can move through each of the poses one by one until their workout is complete.

### How We Made Yoga Randomizer

In order to provide users with the powerful command line Yoga tool that is Yoga Randomizer, the web developers at Dryane Inc. used Open-URI and Nokogiri to scrape a popular Yoga website for poses, instructions, benefits, and difficulty levels. These developers then created a unique command line interface ("CLI") using Ruby, that outputs unique randomized Yoga workouts based on a users input. Into this CLI, the developers included functionality to translate the content of yoga poses and instructions into several popular meme languages. To do this, the developers used the following Ruby gems: (1) dogeify, (2) ermahgerd, (3) pig_latin, and (4) camertron-moar-lolspeak. Developers also included functionality for users to get motivated by including a library of quotes by the quintessential Yogi/Jedi Master Yoda. This functionality was added by incorporating the gem yodaism.

```Bash


```

### Next Steps

While Yoga Randomizer is a groundbreaking new open source workout product that promises to alter the bodies of web develpers the world over, we at Dryane Inc. believe that our programs can always be better. To that end, below is a list of improvements we intend to bring to Yoga Randomizer in future updates.

1. Faster, more responsive and better looking CLI.
2. Refactor source code to improve scalability and readabiltiy.
3. Incorporate Google Translate API to add additional languages to the CLI.
4. Create additional difficulty levels that allow users to mix and match their favorite poses from the existing difficulty levels.
5. Add additional poses and difficulty levels.
6. Incorporate a timer function to alert a user when to move on to a new pose.

We welcome further ideas at any time. Feel free to contact us with your suggestions.

Ryan Ponte -
Diane Cai -

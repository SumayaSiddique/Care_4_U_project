class ExerciseModel {
  String? title;
  String? description;
  String? time;
  String? image;
  String? gif;
  bool? gifAvailable;
  ExerciseModel({
    this.title,
    this.description,
    this.time,
    this.image,
    this.gif,
    this.gifAvailable,
  });
}

List<ExerciseModel> allData = [
  // Rest
  ExerciseModel(
    title: 'Rest ',
    description: 'Rest for your next exercise',
    time: '1 min',
    image: 'img/AllImageDataData/burpees.jpg',
    gif: 'img/gifs/burpees.gif',
  ),

  // uninue 18 women exercises, these were in the middle column of the doc file

  //starts here
  ExerciseModel(
    title: "High Knees",
    description:
        "Stand with your feet hip-width apart. Lift up your left knee to your chest. Switch to lift your right knee to your chest. Continue the movement, alternating legs and moving at a sprinting or running pace.",
    time: "1 min",
    image: "img/AllImageData/highKnees.jpg",
    gif: "highKnees.gif",
  ),
  ExerciseModel(
    title: "Elevated Push-ups",
    description:
        "Place your hands on an elevated surface —such a box or bench— with your hands directly below your shoulders. Your body should form a straight line from your head to your heels. Squeeze your glutes. Maintain these contractions for the duration of the exercise. Lower your body until your chest nearly touches the box of bench then push yourself back to the stating position as quickly as possible.",
    time: "1 min",
    image: "img/AllImageData/elevatedPush-ups.jpg",
    gif: "elevatedPush-ups.gif",
  ),
  ExerciseModel(
    title: "Sit-ups",
    description:
        "Start by lying on your back with your knees bent. Your knees at a 90-degree angle, with your feet flat on the floor. Fingertips on the back of your ears. Lift your torso up as close to your thighs as possible.",
    time: "1 min",
    image: "img/AllImageData/sit-ups.jpg",
    gif: "sit-ups.gif",
  ),
  ExerciseModel(
    title: "Clapping Jacks",
    description:
        "Similar to a classic jumping jack. Reach arms out to the side and back to stretch the shoulders/pecs in a dynamic fashion.",
    time: "1 min",
    image: "img/AllImageData/clappingJacks.jpg",
    gif: "clappingJacks.gif",
  ),
  ExerciseModel(
    title: "Jumping Lunge",
    description:
        "It is a variation of a basic walking lunge exercise, bumping up the intensity by adding a jump. It consists of jumping high in the air and switching your forward foot before landing.",
    time: "1 min",
    image: "img/AllImageData/jumpingLunge.jpg",
    gif: "jumpingLunge.gif",
  ),
  ExerciseModel(
    title: "Sumo Squats",
    description:
        "Stand with feet wider than shoulder-width apart, toes turned out at about 45 degrees. Inhale to sit hips back and lower into a squat, clasping hands in front of chest, keeping core engaged and back neutral. Pause at the bottom, when hips are in line with knees or when form starts to break. Exhale to press into heels and outer edge of foot to stand.",
    time: "1 min",
    image: "img/AllImageData/sumoSquats.jpg",
    gif: "sumoSquats.gif",
  ),
  ExerciseModel(
    title: "Plank Walkouts",
    description:
        "Slowly walk your hands forward without allowing your hips to sag or your lower back posture to change. When you reach the farthest you point you can walk out without breaking form, walk your feet forward until you're in the starting position again.",
    time: "1 min",
    image: "img/AllImageData/plankWalkouts.jpg",
    gif: "plankWalkouts.gif",
  ),
  ExerciseModel(
    title: "Lateral Lunges",
    description:
        "Step out to the right and shift your body weight over your right leg, squatting to a 90-degree angle at the right/left knee. Try to sit down with your butt, keeping your back as upright as possible.",
    time: "1 min",
    image: "img/AllImageData/lateralLunges.jpg",
    gif: "lateralLunges.gif",
  ),
  ExerciseModel(
    title: "Lunges",
    description: '   To correctly do a lunge:  ' +
        '   1.	Start by standing up tall.  ' +
        '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
        '   3.	Lift your front lunging leg to return to the starting position.  ' +
        '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
        '    ',
    time: "1 min",
    image: "img/AllImageData/lunges.jpg",
    gif: "lateralLunges.gif",
  ),
  ExerciseModel(
    title: "Flutter kicks",
    description:
        "Lie on your back, lift your shoulders off the ground, lift your legs up off the floor and drive your lower back into the mat. Swiftly move your feet up and down like you're swimming in air.",
    time: "1 min",
    image: "img/AllImageData/flutterkicks.jpg",
    gif: "flutterkicks.gif",
  ),
  ExerciseModel(
    title: "Jumping Rope",
    description:
        "Start with your hands in the ready position. Practice a toe catch. Pretend jump",
    time: "1 min",
    image: "img/AllImageData/jumpingRope.jpg",
    gif: "jumpingRope.gif",
  ),
  ExerciseModel(
    title: "Core Scissor",
    description:
        "Grab a rope and have it out to your side in one hand and rotate it so it’s in line with your jump.  perform one jump, before returning the rope to its starting position and performing it over and over again.",
    time: "1 min",
    image: "img/AllImageData/coreScissor.jpg",
    gif: "coreScissor.gif",
  ),
  ExerciseModel(
    title: "Glute Bridges",
    description:
        "Lie face up on the floor, with your knees bent and feet flat on the ground. Keep your arms at your side with your palms down. Lift your hips off the ground until your knees, hips and shoulders form a straight line. Hold your bridged position for a couple of seconds before easing back down.",
    time: "1 min",
    image: "img/AllImageData/gluteBridges.jpg",
    gif: "gluteBridges.gif",
  ),
  ExerciseModel(
    title: "Overhead presses",
    description:
        "Stand upright and keep the back straight. You can hold a dumbbell in each hand (or not) at the shoulders with an overhand grip. Thumbs should be on the inside and knuckles facing up. Raise the weights above the head in a controlled motion while exhaling. Pause at the top of the motion. Return the dumbbells to the shoulders while inhaling.",
    time: "1 min",
    image: "img/AllImageData/overheadPresses.jpg",
    gif: "overheadPresses.gif",
  ),
  ExerciseModel(
    title: "Deadbugs",
    description:
        "Lie face up on your mat with your arms in the air above your torso and your legs in the air with your knees bent at 90-degree angles. Lower opposite arm and leg toward the floor in a slow and controlled fashion. Return to center and then repeat on the other side.	",
    time: "1 min",
    image: "img/AllImageData/deadbugs.jpg",
    gif: "deadbugs.gif",
  ),
  ExerciseModel(
    title: "Lateral shuffle",
    description:
        "Keep a tight core and a soft bend in the knee, sit your hips back, and take a light sideways hop to the right. Reach your left hand toward your right foot and touch the ground. Bring yourself back up and hop sideways to the left, reaching your right hand toward your left foot. ",
    time: "1 min",
    image: "img/AllImageData/lateralShuffle.jpg",
    gif: "lateralShuffle.gif",
  ),
  ExerciseModel(
    title: "Side Shaper",
    description:
        "Lie on your right side, legs extended and stacked from hip to feet. The elbow of your right arm is directly under your shoulder. Engage your abdominal muscles, drawing your navel toward your spine. Lift your hips and knees from the mat while exhaling. Return to the starting position. Change sides and repeat.",
    time: "1 min",
    image: "img/AllImageData/sideShaper.jpg",
    gif: "sideShaper.gif",
  ),
  ExerciseModel(
    title: "Bird Dog",
    description:
        "Draw your shoulder blades together. Raise your right arm and left leg, keeping your shoulders and hips parallel to the floor. Lengthen the back of your neck and tuck your chin into your chest to gaze down at the floor. Hold this position for a few seconds, then lower back down to the starting position.",
    time: "1 min",
    image: "img/AllImageData/birdDog.jpg",
    gif: "birdDog.gif",
  ),
  ExerciseModel(
    title: "Mermaid",
    description: "",
    time: "1 min",
    image: "img/AllImageData/mermaid.jpg",
    gif: "mermaid.gif",
  ),
  // uninue 18 women exercises, these were in the middle column of the doc file

  //ends  here

  // yoga exercise starts here
  //beginner
  ExerciseModel(
    title: 'Low Plank/ Chaturanga Dandasana',
    description:
        'Start in Plank Pose with your palms flat on the floor, hands shoulder-width apart, shoulders stacked directly above your wrists, legs extended, and core engaged.\nSlowly lower down to a Low Plank by bending your elbows, keeping them tucked in close to the side of your body, until they form 90-degree angles.\n\n\nHold for 1 breath.',
    time: '1 min',
    image: 'img/AllImageData/lowPlank/ChaturangaDandasana.jpg',
    gif: 'img/gifs/lowPlank/ChaturangaDandasana.gif',
  ),

  ExerciseModel(
    title: 'Half Pigeon Pose/ Ardha Kapotasana',
    description:
        'From Downward-Facing Dog, extend your left leg high, and then bring your leg underneath your body and place it in front of you, with your shin parallel to the top of your mat.\nExtend your right leg straight behind you. Rest the top of your foot on the floor.\nKeep your left foot flexed. Try to keep your right hip as close to the mat as you can. If it lifts off the floor, bring your left foot in a little closer to your body.\nStay upright for three breaths. Then, fold over and rest your head on the ground for 5–10 breaths.\n\n\nRepeat on the other leg.',
    time: '1 min',
    image: 'img/AllImageData/halfPigeonPose/ArdhaKapotasana.jpg',
    gif: 'img/gifs/halfPigeonPose/ArdhaKapotasana.gif',
  ),

  ExerciseModel(
    title: 'Plank Pose/ Kumbhakasana',
    description:
        'Start on all fours, with your knees under your hips and your hands flat on the floor directly underneath your shoulders.\nLift your knees off the floor and extend your legs out behind you. You should now be on your toes and your hands, with your body forming one long line\nKeep your palms flat on the floor, hands shoulder-width apart, shoulders stacked directly above your wrists, and core engaged. Keep your neck and spine in a neutral position by looking down at the top of your mat.\n\n\nHold this position for 3-5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/plankPose/Kumbhakasana.jpg',
    gif: 'img/gifs/plankPose/Kumbhakasana.gif',
  ),

  ExerciseModel(
    title: 'Upward-Facing Dog/ Urdhva Mukha Svanasana',
    description:
        'From Low Plank/Chaturanga, drop your hips down to the floor and flip your toes over so the tops of your feet touch the floor.\nTighten your core and straighten your arms to push your chest up. Pull your shoulders back, squeeze your shoulder blades, and tilt your head toward the ceiling, to open up your chest.',
    time: '1 min',
    image: 'img/AllImageData/upward-FacingDog/UrdhvaMukhaSvanasana.jpg',
    gif: 'img/gifs/upward-FacingDog/UrdhvaMukhaSvanasana.gif',
  ),

  ExerciseModel(
    title: 'Mountain Pose/ Tadasana',
    description:
        'Stand with your toes together and heels slightly apart.\nSpread your toes and place your weight evenly through both feet. Engage your core and tuck your hips under a bit so your tailbone is pointing down toward the floor. Relax your shoulders and roll them back and down.\nInhale and reach your arms overhead, while pressing down into your feet. You may also put your hands in prayer position in front of your chest, or rest them by your sides—all are commonly used variations, and your instructor may cue one specifically or give you the choice.\nTake long, slow, deep breaths in and out of your nose.\n\n\nHold for 3–5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/mountainPose/Tadasana.jpg',
    gif: 'img/gifs/mountainPose/Tadasana.gif',
  ),

  ExerciseModel(
    title: 'Crescent Lunge/ Utthita Ashwa Sanchalanasana',
    description:
        'Take a big step forward with your left foot to start in a staggered stance, with your feet almost mat-length apart.\nBend your front knee and keep your back leg straight and heel lifted off the floor. Try to bend your front leg so that your thigh is parallel to the floor. Square your hips toward the front.\nExtend your arms toward the ceiling on either side of your head and stretch up as you also press into the mat and feel the stretch in your hips.\nHold for 5 breaths and repeat on the other side.\nTo move into Low Lunge/Anjaneyasana, simply drop your back knee to the floor, keeping the leg extended long and the shin flat on the mat.',
    time: '1 min',
    image: 'img/AllImageData/crescentLunge/UtthitaAshwaSanchalanasana.jpg',
    gif: 'img/gifs/crescentLunge/UtthitaAshwaSanchalanasana.gif',
  ),

  ExerciseModel(
    title: 'Tree/ Vrksasana',
    description:
        'Start in mountain pose with your toes together and heels slightly apart.\nBring your right foot to the inner thigh of your left leg. Squeeze your foot and inner thigh together. The knee of your right leg should be turned out and your right thigh facing down toward the ground at a 45-degree angle.\nOnce you’ve found your balance, lift your hands to prayer position in front of your chest (as shown), or up overhead if that feels better for you.\nKeep your gaze focused on a fixed point in front of you to help stay balanced.\n\n\nHold for 5–10 breaths, then switch sides.',
    time: '1 min',
    image: 'img/AllImageData/tree/Vrksasana.jpg',
    gif: 'img/gifs/tree/Vrksasana.gif',
  ),

  ExerciseModel(
    title: 'Downward-Facing Dog/ Adho Mukha Svanasana',
    description:
        'Start on your hands and knees, with your hands stacked under your shoulders and knees under your hips.\nSpread your hands wide and press your index finger and thumb into your mat.\nLift your tailbone and press your butt up and back, drawing your hips toward the ceiling. Straighten your legs as best as you can and press your heels gently toward the floor.\nYour head should be between your arms, facing your knees, and your backs should be flat.\n\n\nHold for 5–10 breaths.',
    time: '1 min',
    image: 'img/AllImageData/downward-FacingDog/AdhoMukhaSvanasana.jpg',
    gif: 'img/gifs/downward-FacingDog/AdhoMukhaSvanasana.gif',
  ),

  ExerciseModel(
    title: 'Warrior II/ Virabhadrasana II',
    description:
        'Take a big step forward with your left foot to start in a staggered stance, with your feet almost mat-length apart.\nExtend your arms so that they are parallel to the floor.\nBend your left knee so that it\'s at or near a 90-degree angle, your thigh parallel to the floor, while keeping the right leg straight.\nPoint your left toes forward and turn your right foot out to the right so that it\'s perpendicular to your left foot. Your left heel should be in line with the arch of your right foot.\nAt the same time, twist your torso to the right so that your left hip is facing toward the front of the room and your right hip is facing toward the back. Your left arm and your head should both be pointing forward and your right arm should be pointing back.\n\n\nHold for 1–5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/warriorII/VirabhadrasanaII.jpg',
    gif: 'img/gifs/warriorII/VirabhadrasanaII.gif',
  ),

  ExerciseModel(
    title: 'Dancers Pose/ Natarajasana',
    description:
        'Stand tall with your feet together.\nBend your left knee and bring your left foot toward your glutes. Grab onto the inner arch of your left foot with your left hand and slowly lift your foot toward the ceiling. At the same time, reach your right arm forward and up toward the ceiling.\nActively press down into the floor with your entire right foot as you start to open your chest and pull your lifted leg up. Keep your chest lifted.\n\n\nHold on one side for 5-10 breaths, and then switch sides.',
    time: '1 min',
    image: 'img/AllImageData/dancersPose/Natarajasana.jpg',
    gif: 'img/gifs/dancersPose/Natarajasana.gif',
  ),

  ExerciseModel(
    title: 'Seated Forward Fold/ Paschimottanasana',
    description:
        'Sit on the floor with your legs extended in front of you. Flex your feet. Sit up tall with a straight back.\nBending from your hips and keeping your flat back, fold your upper body over your lower body.\nIf you are able to, grab onto the outside of each foot, or your ankles or shins. Release your neck and let your head hang heavy.\n\n\nHold for 5–10 breaths.',
    time: '1 min',
    image: 'img/AllImageData/seatedForwardFold/Paschimottanasana.jpg',
    gif: 'img/gifs/seatedForwardFold/Paschimottanasana.gif',
  ),

  ExerciseModel(
    title: 'Triangle/ Trikonasana',
    description:
        'Start in Warrior II.\nStraighten your front leg. Then, reach forward with your left hand toward the ground. Tilt your torso forward and rotate it open to the right side.\nRotate your arms to 6 and 12 o’clock. Rest your left hand on your shin, or the floor if you can, and extend your top arm fingers toward the ceiling.\n\n\nHold for 5–10 breaths, then switch sides.',
    time: '1 min',
    image: 'img/AllImageData/triangle/Trikonasana.jpg',
    gif: 'img/gifs/triangle/Trikonasana.gif',
  ),
  // yoga exercise ends here

  // men exercise list starts here
  // abs
  ExerciseModel(
    title: 'Plank',
    description:
        '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
    time: '20',
    image: 'img/AllImageData/plank.jpg',
    gif: 'img/gifs/none.gif',
    // gif none
  ),

  ExerciseModel(
    title: 'cobra stretches ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/cobraStretches.jpg',
    gif: 'img/gifs/ccobraStretches.gif',
  ),

  ExerciseModel(
    title: 'mountain climber ',
    description: '   1.	Get into a plank position, making sure to distribute your weight evenly between your hands and your toes.  ' +
        '   2.	Check your form—your hands should be about shoulder-width apart, back flat, abs engaged, and head in alignment.  ' +
        '   3.	Pull your right knee into your chest as far as you can.  ' +
        '   4.	Switch legs, pulling one knee out and bringing the other knee in.  ' +
        '   5.	Keep your hips down, run your knees in and out as far and as fast as you can. Alternate inhaling and exhaling with each leg change.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/mountainClimber.jpg',
    gif: 'img/gifs/mountainClimber.gif',
  ),

  ExerciseModel(
    title: 'leg raises ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/legRaises.jpg',
    gif: 'img/gifs/legRaises.gif',
  ),

  ExerciseModel(
    title: 'Russian twist ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/russianTwist.jpg',
    gif: 'img/gifs/russianTwist.gif',
  ),

  ExerciseModel(
    title: 'abdominal crunches ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/abdominalCrunches.jpg',
    gif: 'img/gifs/abdominalCrunches.gif',
  ),
  ExerciseModel(
    title: 'spine lumbar twist stretches left ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/spineLumbarTwistStretchesLeft.jpg',
    gif: 'img/gifs/none.gif',
    // gif none
  ),

  ExerciseModel(
    title: 'spine lumbar twist stretches right ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/spineLumbarTwistStretchesRight.jpg',
    gif: 'img/gifs/spineLumbarTwistStretchesRight.gif',
  ),

  ExerciseModel(
    title: 'jumping jacks ',
    description:
        'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
    time: '1 min',
    image: 'img/AllImageData/jumpingJacks.jpg',
    gif: 'img/gifs/jumpingJacks.gif',
  ),
  ExerciseModel(
    title: 'jumping squats ',
    description:
        '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
    time: '1 min',
    image: 'img/AllImageData/jumpingSquats.jpg',
    gif: 'img/gifs/jumpingJacks.gif',
  ),

  // ExerciseModel(
  //   title: 'heel touch ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/heelTouch.jpg',
  //   gif: 'img/gifs/heelTouch.gif',
  // ),

  // ExerciseModel(
  //   title: 'side bridges left ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/sideBridgesLeft.jpg',
  //   gif: 'img/gifs/sideBridgesLeft.gif',
  // ),

  // ExerciseModel(
  //   title: 'side bridges right ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/sideBridgesRight.jpg',
  //   gif: 'img/gifs/sideBridgesRight.gif',
  // ),

  // ExerciseModel(
  //   title: 'butt bridge ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/buttBridge.jpg',
  //   gif: 'img/gifs/buttBridge.gif',
  // ),

  // ExerciseModel(
  //   title: 'V-up ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/v-up.jpg',
  //   gif: 'img/gifs/v-up.gif',
  // ),

  // ExerciseModel(
  //   title: 'bicycle crunches ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/bicycleCrunches.jpg',
  //   gif: 'img/gifs/bicycleCrunches.gif',
  // ),

  // ExerciseModel(
  //   title: 'crossover crunch ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/crossoverCrunch.jpg',
  //   gif: 'img/gifs/crossoverCrunch.gif',
  // ),

  // ExerciseModel(
  //   title: 'side plank left ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/sidePlankLeft.jpg',
  //   gif: 'img/gifs/sidePlankLeft.gif',
  // ),

  // ExerciseModel(
  //   title: 'side plank right ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/sidePlankRight.jpg',
  //   gif: 'img/gifs/sidePlankRight.gif',
  // ),

  // ExerciseModel(
  //   title: 'push up and rotation ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/pushUpAndRotation.jpg',
  //   gif: 'img/gifs/pushUpAndRotation.gif',
  // ),

  ExerciseModel(
    title: 'sit ups ',
    description:
        '   Lie faceup on the floor with your knees bent and feet flat.  ' +
            '   Stack your forearms in front of your chest.  ' +
            '   Now raise your torso to a sitting position in one fluid movement.  ' +
            '   Slowly lower your torso back to the starting position.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/sitUps.jpg',
    gif: 'img/gifs/sitUps.gif',
  ),
  // up to abs

  // arms start
  ExerciseModel(
    title: 'arm circle clockwise',
    description: '   1.	Stand straight with your feet shoulder-width apart.  ' +
        '   2.	Extend your arms out on either side of your body, parallel to the floor. Close your hands into fists.  ' +
        '   3.	Start rotating your arms in fast clockwise motions.  ' +
        '   4.	Do 20 arm circles, and then relax for 15 seconds.  ' +
        '   5.	Repeat this exercise 10-15 times.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/armCircleClockwise.jpg',
    gif: 'img/gifs/armCircleClockwise.gif',
  ),

  ExerciseModel(
    title: 'standing biceps stretch left',
    description:
        '  This exercise stretches your biceps. Stand with your left arm close to a wall. Put your left hand on the wall and extend your arm. Gently turn your body to the right.    ',
    time: '1 min',
    image: 'img/AllImageData/standingBicepsStretchLeft.jpg',
    gif: 'img/gifs/standingBicepsStretchLeft.gif',
  ),

  ExerciseModel(
    title: 'standing biceps stretch right',
    description:
        '  This exercise stretches your biceps. Stand with your right arm close to a wall. Put your right hand on the wall and extend your arm. Gently turn your body to the left.  ',
    time: '1 min',
    image: 'img/AllImageData/standingBicepsStretchRight.jpg',
    gif: 'img/gifs/standingBicepsStretchRight.gif',
  ),

  ExerciseModel(
    title: 'diamond push-ups',
    description:
        '   Get on all fours with your hands together under your chest. Position your index fingers and thumbs so they’re touching, forming a diamond shape, and extend your arms so that your body is elevated and forms a straight line from your head to your feet.  ' +
            '   Lower your chest towards your hands, ensuring you don’t flare your elbows out to the sides and keeping your back flat. Stop just before your chest touches the floor, then push back up to the starting position.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/diamondPush-ups.jpg',
    gif: 'img/gifs/diamondPush-ups.gif',
  ),

  ExerciseModel(
    title: 'wall push-ups',
    description: '   1.	Stand with feet under hips, arm’s length away from a wall.   ' +
        '   2.	Plant both palms on the wall, with wrists in line with your shoulders and fingers pointed at the ceiling.   ' +
        '   3.	Screw pinkies into the wall to activate lats and brace core (by preparing for a gut punch). Then, pull up on quad muscles and clench butt cheeks like you’re holding in a fart.   ' +
        '   4.	Maintaining this tight AF position, inhale and bend elbows straight back until your forehead or nose nearly boinks the wall.   ' +
        '   5.	Exhale as you press the wall away and return to the starting position. That’s 1 rep.   ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/wallPush-ups.jpg',
    gif: 'img/gifs/wallPush-ups.gif',
  ),

  ExerciseModel(
    title: 'triceps dips ',
    description: '   Find a stable chair, bench, or step.   ' +
        '   1.	Sit on the edge of the chair and grip the edge next to your hips. Your fingers should be pointed at your feet. Your legs are extended and your feet should be about hip-width apart with the heels touching the ground. Look straight ahead with your chin up.  ' +
        '   2.	Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair.  ' +
        '   3.	Lower yourself until your elbows are bent between 45 and 90 degrees.  ' +
        '   4.	Slowly push yourself back up to the start position and repeat. Control the movement throughout the range of motion.  ' +
        '   5.	Begin with 3 sets of 10 repetitions and increase your sets and reps over several weeks as you build muscle and strength in your triceps.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/tricepsDips.jpg',
    gif: 'img/gifs/tricepsDips.gif',
  ),

  ExerciseModel(
    title: 'arm raises',
    description:
        '  Stand with feet shoulder length apart and keep your hands at your side with palms facing forward, raise your arms up and out to the sides so that your arms are at shoulder height. Then lower them to starting position, with a fluid and constant motion until you have completed the set. Keep your breathing fluid and constant. It is important to keep your spine straight and hips facing forward.  ',
    time: '1 min',
    image: 'img/AllImageData/armRaises.jpg',
    gif: 'img/gifs/armRaises.gif',
  ),

  ExerciseModel(
    title: 'triceps stretch right',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/tricepsStretchRight.jpg',
    gif: 'img/gifs/tricepsStretchRight.gif',
  ),

  ExerciseModel(
    title: 'push-ups',
    description: '   Step-by-Step Instructions   ' +
        '   1.	Get on the floor on all fours, positioning your hands slightly wider than your shoulders.2  ' +
        '   2.	Extend your legs back so that you are balanced on your hands and toes. Keep your body in a straight line from head to toe without sagging in the middle or arching your back. You can position your feet to be close together or a bit wider depending on what is most comfortable for you.  ' +
        '   3.	Before you begin any movement, contract your abs and tighten your core by pulling your belly button toward your spine. Keep a tight core throughout the entire pushup.2  ' +
        '   4.	Inhale as you slowly bend your elbows and lower yourself until your elbows are at a 90-degree angle.  ' +
        '   5.	Exhale as you begin contracting your chest muscles and pushing back up through your hands to the start position. Don\'t lock out the elbows; keep them slightly bent.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/push-ups.jpg',
    gif: 'img/gifs/push-ups.gif',
  ),

  ExerciseModel(
    title: 'inchworms',
    description: '   1.	Stand tall, your feet roughly hip-distance apart. Check your posture—your ears should be aligned over your shoulders, hips, knees, and ankles, your abdominals engaged.  ' +
        '   2.	Take a breath in, then as you exhale, look down at the ground and start reaching your hands toward the floor in front of your feet, allowing your back to bend forward, rolling down one vertebra at a time. Allow your knees to bend slightly, as needed, to enable your hands to reach the ground.  ' +
        '   3.	Place your hands on the floor in front of your feet. Inhale and walk your hands forward, one at a time, allowing your heels to lift off the floor as your body begins to straighten. When your hands are directly under your shoulders, check your form—you should be in a full plank position with your core, chest, quads, triceps, and shoulders engaged, your body forming a straight line from heels to head.  ' +
        '   4.	Keep your legs relatively straight and begin walking your feet forward, one at a time, toward your hands. This should provide a nice stretch through your hamstring?s, calves, and glutes as your hips start lifting toward the ceiling. Exhale as you step forward.  ' +
        '   5.	Stop when your feet are as close to your hands as you can comfortably bring them. Remember, you can bend your knees slightly to ease the stretch on your hamstring?s, but try to keep them as straight as possible.  ' +
        '   6.	Return to standing by slowly rolling your back up from the hips, straightening one vertebra at a time. Inhale as you go. When you\'re back in the starting position, you\'ve completed one repetition. Continue for time or repetitions, depending on your workout.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/inchworms.jpg',
    gif: 'img/gifs/inchworms.gif',
  ),

  ExerciseModel(
    title: 'triceps stretch left ',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/tricepsStretchLeft.jpg',
    gif: 'img/gifs/tricepsStretchLeft.gif',
  ),

  ExerciseModel(
    title: 'raises',
    description: '   How to Do Dumbbell Front Raises:  ' +
        '   Select two dumbbells of a suitable weight. You must start with a light weight and plan to do 10 to 12 repetitions for one to three sets of exercises. A suggested starting weight for this exercise is with 5-pound dumbbells for women and 10-pound dumbbells for men. Don\'t lift weights that are too heavy.   ' +
        '   1.	Stand with feet about shoulder-width apart. Keep the back straight and feet planted flat on the floor. Your arms holding weights should hang down.  ' +
        '   2.	Hold the dumbbells across the thighs horizontally, palms facing back toward the thighs. Ensure that you have a firm grip.  ' +
        '   3.	Brace the abdominal muscles.  ' +
        '   4.	Lift the weights upward, inhaling, with arms out in front and palms facing down. Keep a slight bend in the elbows to reduce the stress on the joints. Pause when the arms are approximately horizontal to the floor and feel the contraction in the shoulders.  ' +
        '   5.	Return the dumbbells to the starting position at the thighs with a slow and controlled motion while exhaling.  ' +
        '   6.	Repeat the exercise for the number of sets and repetitions in your program.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/raises.jpg',
    gif: 'img/gifs/raises.gif',
  ),

  ExerciseModel(
    title: 'side arm ',
    description:
        '  Stand tall, a dumbbell in each hand at your sides, your palms facing in. Position your feet roughly hip-distance apart. Check your posture—roll your shoulders back, engage your core, and look straight ahead. Raise your arms simultaneously just a couple inches out to each side and pause.  ',
    time: '1 min',
    image: 'img/AllImageData/sideArm.jpg',
    gif: 'img/gifs/sideArm.gif',
  ),

  ExerciseModel(
    title: 'diamond plank',
    description:
        '   Get into a tabletop position with your shoulders directly over your wrists and hips in line with your knees.   ' +
            '   • Engaging your abs, shoulders, back, and glutes, extend your legs back to straighten into a plank and hold.   ' +
            '   • If you can, do the exercise in front of a mirror, to check that your butt isn’t raised. (A common mistake, but your body should be flat as opposed to an upside down-V shape.)  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/diamondPlank.jpg',
    gif: 'img/gifs/diamondPlank.gif',
  ),

  ExerciseModel(
    title: 'leg barbell curl right',
    description:
        '  This exercise targets your biceps. Stand against a wall. Use your left hand to grab your right ankle with your palm facing up. Pull your ankle towards your shoulder as much as you can, then slowly lower it. Repeat the exercise.   Don\'t fully extend your biceps when lowering your ankle.  ',
    time: '1 min',
    image: 'img/AllImageData/legBarbellCurlRight.jpg',
    gif: 'img/gifs/legBarbellCurlRight.gif',
  ),
  // upto arm beginner

  // Intermediate start

  // ExerciseModel(
  //   title: 'triceps stretches left',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/tricepsStretchesLeft.jpg',
  //   gif: 'img/gifs/tricepsStretchesLeft.gif',
  // ),

  // ExerciseModel(
  //   title: 'triceps stretches right',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/tricepsStretchesRight.jpg',
  //   gif: 'img/gifs/tricepsStretchesRight.gif',
  // ),

  ExerciseModel(
    title: 'arm scissors',
    description: '   1.	Stand up straight with your legs wide apart.  ' +
        '   2.	Take your arms out to the sides, and bring them to your front. One hand should overlap the other, resembling the letter Х.  ' +
        '   3.	Return your arms to the original position.  ' +
        '   4.	Repeat this 20 times.  ' +
        '   5.	Relax with your arms down for 15 seconds.  ' +
        '   6.	Repeat the exercise 10-20 times.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/armScissors.jpg',
    gif: 'img/gifs/armScissors.gif',
  ),

  ExerciseModel(
    title: 'alternating hooks ',
    description:
        '  This exercise works your shoulders. Stand with your feet shoulder-width apart. Place your dominant foot forward and slightly bend your knees. Clench your fists and bend your elbows at 90 degrees. Raise your right arm to your shoulder height and keep your forearm parallel to the ground. Rotate your shoulders and hips and punch towards the left. Return, switch sides and repeat.  ',
    time: '1 min',
    image: 'img/AllImageData/alternatingHooks.jpg',
    gif: 'img/gifs/alternatingHooks.gif',
  ),

  ExerciseModel(
    title: 'skipping without rope',
    description:
        '  Pretend to hold a skipping rope handle in each hand. Jump and alternately land on the balls of your feet. Rotating your wrists at the same time as if you were spinning a rope.  ',
    time: '1 min',
    image: 'img/AllImageData/skippingWithoutRope.jpg',
    gif: 'img/gifs/skippingWithoutRope.gif',
  ),

  ExerciseModel(
    title: 'push-ups and rotation',
    description:
        '   Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your feet back behind you and lift your knees. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ' +
            '   Keeping your elbows in towards your ribs and your forearms vertical, bend at the elbows to lower your body towards the floor. Your head and shoulders should move forwards of your hands as you get closer to the floor. Use your full range of motion to lower your chest in between your hands, as close to the floor as you can, then push your hands into the floor, keeping your body tensed, to move it up away from the floor back towards the start position. As you get to the top of the push up, shift your weight onto your left hand and lift your right arm up, rotating through the spine and shoulders into a side plank position with your arms.  ' +
            '   Place your right hand back on the floor under your right shoulder, then lower into your next push-up. As you return to the top of this push-up, shift your weight on to your right hand and lift your left arm up into a side plank. Keep going with this push-up, side plank movement, alternating sides in between each push-up.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/push-upsAndRotation.jpg',
    gif: 'img/gifs/push-upsAndRotation.gif',
  ),

  ExerciseModel(
    title: 'push-ups',
    description: '   To perform a traditional pushup:  ' +
        '   1.	Start kneeling on an exercise mat or the floor and bring your feet together behind you.  ' +
        '   2.	Bend forward to position yourself in a high plank, the top of a pushup position, with your palms flat on the mat, hands shoulder-width apart, and with your fingers facing forward or hands turned slightly in. Your shoulders should be positioned over your hands. Your feet should be together behind you and your back should be flat. Keep your abs pulled in.  ' +
        '   3.	Slowly lower your body toward the floor. Maintain a rigid torso and keep your head aligned with your spine. Don’t let your low back sag or your hips hike upward.  ' +
        '   4.	Continue to lower yourself until your chest or chin touch the ground. Your elbows may flare out during the downward movement.  ' +
        '   5.	Press upward with your arms. Continue pressing until your arms are fully extended at your elbows and you’re back in the plank, at the top of the pushup position.  ' +
        '   6.	Repeat the downward movement. Start with 10 pushups, or however many you can do with proper form, and work your way up as you build strength.  ' +
        '    ',
    time: '20 s',
    image: 'img/AllImageData/pushUp.jpg',
    gif: 'img/gifs/pushUps.gif',
  ),

  // aksjdhaksjdhasjdhaksjdhasd
  // aklsjdhaksjdhaksjdahskdjahsdkjasdh
  // lajsdhkaljsdhaksjdhaksjdhasjd
  // asldjhaksdjahskdjahsdkjhds

  //advanced arm starts here

  ExerciseModel(
    title: 'Arm curls crunch left',
    description:
        '  This exercise works your biceps. Lie on your left side with your knees bent and lifted. Grasp your left thigh with your left hand and put your right hand behind your head. Pull your left thigh to raise your upper body. Slowly return and repeat.   Use your elbow to support on the floor, instead of using your whole forearm. Try to eliminate your abs when pulling your upper body up.   ',
    time: '1 min',
    image: 'img/AllImageData/armCurlsCrunchLeft.jpg',
    gif: 'img/gifs/armCurlsCrunchLeft.gif',
  ),
  ExerciseModel(
    title: 'Arm curls crunch right ',
    description:
        '  This exercise works your biceps. Lie on your Right side with your knees bent and lifted. Grasp your right thigh with your right hand and put your left hand behind your head. Pull your right thigh to raise your upper body. Slowly return and repeat.   Use your elbow to support on the floor, instead of using your whole forearm. Try to eliminate your abs when pulling your upper body up.   ',
    time: '1 min',
    image: 'img/AllImageData/armCurlsCrunchRight.jpg',
    gif: 'img/gifs/armCurlsCrunchRight.gif',
  ),
  ExerciseModel(
    title: 'Leg barbell curl left',
    description:
        '  This exercise targets your biceps. Stand against a wall. Use your right hand to grab your left ankle with your palm facing up. Pull your ankle towards your shoulder as much as you can, then slowly lower it. Repeat the exercise.   Don\'t fully extend your biceps when lowering your ankle.  ',
    time: '1 min',
    image: 'img/AllImageData/legBarbellCurlLeft.jpg',
    gif: 'img/gifs/legBarbellCurlLeft.gif',
  ),

  ExerciseModel(
    title: 'Leg barbell curl right',
    description:
        '  This exercise targets your biceps. Stand against a wall. Use your left hand to grab your right ankle with your palm facing up. Pull your ankle towards your shoulder as much as you can, then slowly lower it. Repeat the exercise.   Don\'t fully extend your biceps when lowering your ankle.  ',
    time: '1 min',
    image: 'img/AllImageData/legBarbellCurlRight.jpg',
    gif: 'img/gifs/legBarbellCurlRight.gif',
  ),

  ExerciseModel(
    title: 'Floor triceps dips',
    description: '   It\'s one of those retro gym moves that gets the job done! Tone the backs of your arms with classic triceps dips.  ' +
        '   •	Position your hands shoulder width apart on the floor.  ' +
        '   •	Move your booty in front of the bench with your legs out in front of you and feet placed about hip width apart on the floor.  ' +
        '   •	Straighten your arms, and keep a little bend in your elbows in order to always keep tension on your triceps and off your elbow joints.  ' +
        '   •	Now slowly bend at your elbows, and lower your upper body toward the floor until your arms are at about a 90-degree angle. Be sure to keep your back close to the bench.  ' +
        '   •	Once you reach the bottom of the movement, slowly press off with your hands, and push yourself straight back up to the starting position.  ' +
        '   •	This counts as one rep.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/floorTricepsDips.jpg',
    gif: 'img/gifs/floorTricepsDips.gif',
  ),

  ExerciseModel(
    title: 'Doorway curls left',
    description:
        '  This exercise works your biceps. Stand in a doorway with your feet close to the bottom of the door, grasp the doorframe using your left hand. Extend your left arm and lean back, then pull at the doorframe to come up. Repeat this exercise.   ',
    time: '1 min',
    image: 'img/AllImageData/doorwayCurlsLeft.jpg',
    gif: 'img/gifs/doorwayCurlsLeft.gif',
  ),
  ExerciseModel(
    title: 'Doorway curls right',
    description:
        '  This exercise works your biceps. Stand in a doorway with your feet close to the bottom of the door, grasp the doorframe using your right hand. Extend your right arm and lean back, then pull at the doorframe to come up. Repeat this exercise.   ',
    time: '1 min',
    image: 'img/AllImageData/doorwayCurlsRight.jpg',
    gif: 'img/gifs/doorwayCurlsRight.gif',
  ),

  ExerciseModel(
    title: 'Modified push-up low hold',
    description:
        '  This exercise works your triceps. Start in the push-up position but with your knees on the ground. Lower your body until your elbows are at 90 degrees. Hold this position.  ',
    time: '1 min',
    image: 'img/AllImageData/modifiedPushup.jpg',
    gif: 'img/gifs/modifiedPush-upLowHold.gif',
  ),

  ExerciseModel(
    title: 'Chest press pulse',
    description: '   Step 1: Place your forearms together and then clasp your hands.  ' +
        '       Step 2: Lift your arms up so that your elbows are at shoulder height.  ' +
        '       Step 3: Press your forearms together and as you do raise your arms up 3-4 inches and then back down.  ' +
        '       Step 4: Continue moving your arms up and down for the desired amount of reps.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/chestPressPulse.jpg',
    gif: 'img/gifs/chestPressPulse.gif',
  ),

  ExerciseModel(
    title: 'Military push-ups',
    description:
        '   •	Start in a high plank position with your hands flat on the floor about shoulder-width apart, wrists under shoulders.  ' +
            '   •	Turn your elbows so that they are facing behind you.  ' +
            '   •	Keeping your body in one long line, bend your arms and lower yourself as close to the floor as you can. Keep your arms close to your torso as you perform the movement.  ' +
            '   •	Push back up to start.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/militaryPush-ups.jpg',
    gif: 'img/gifs/militaryPush-ups.gif',
  ),

  ExerciseModel(
    title: 'Arm circles counterclockwise',
    description: '   1.	Stand straight with your feet shoulder-width apart.  ' +
        '   2.	Extend your arms out on either side of your body, parallel to the floor. Close your hands into fists.  ' +
        '   3.	Start rotating your arms in fast clockwise motions.  ' +
        '   4.	Do 20 arm circles, and then relax for 15 seconds.  ' +
        '   5.	Repeat this exercise 10-15 times.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/armCirclesCounterclockwise.jpg',
    gif: 'img/gifs/armCirclesCounterclockwise.gif',
  ),

  ExerciseModel(
    title: 'Shoulder gators',
    description:
        '  Stand with the feet hip width apart and parallel. Place the fingertips behind the head on either side. Elbows wide. Keeping the hands behind the head close the elbow together to touch/open them back wide.   ',
    time: '1 min',
    image: 'img/AllImageData/shoulderGators.jpg',
    gif: 'img/gifs/shoulderGators.gif',
  ),
  //advanced arm ends  here
  // arms end

  // aoskdjalsdjalskdjalskdjksjdfgl;askdjfjfhfklsdjghldkfjg
  // asdlhssdlfjhafksdjhalkjfsdghlkdjfghklsdjfg
  // sdflghsdlfjghsdlfjgh

  // chest start
  ExerciseModel(
    title: 'chest stretches ',
    description: '   Step-by-Step Instructions   ' +
        '   Have the towel or strap handy. Breathe normally as you stretch.   ' +
        '   1.	Stand with good posture holding a towel behind your back.  ' +
        '   2.	Lift the towel up behind, holding the ends with both hands.  ' +
        '   3.	Use the towel to gently pull your shoulders into extension. You should feel a stretch in the front of your chest. Squeeze the shoulder blades together to maximize the stretch.  ' +
        '   4.	Hold this position for 15 to 30 seconds, and then relax.  ' +
        '   5.	Repeat 2-3 times.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/chestStretches.jpg',
    gif: 'img/gifs/chestStretches.gif',
  ),

  ExerciseModel(
    title: 'incline push-ups ',
    description: '   Step-by-Step Instructions  ' +
        '   The basic incline pushup is done using a bench, table, or another solid surface that is about 3 feet high. Here\'s how to do this style correctly:  ' +
        '   1.	Stand facing the bench, table, or the edge of a bed.  ' +
        '   2.	Place your hands on the edge of the bench just slightly wider than shoulder width. Your arms are straight but elbows are not locked. Align your feet so that your arms and body are completely straight.  ' +
        '   3.	Bend your elbows to slowly lower your chest to the edge of the bench while inhaling. Keep your body straight and rigid throughout the movement.  ' +
        '   4.	Push your body away from the bench until your elbows are extended, but not locked. Exhale as you push up.  ' +
        '   5.	Keep going with slow, steady repetitions.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/inclinePush-ups.jpg',
    gif: 'img/gifs/inclinePush-ups.gif',
  ),

  ExerciseModel(
    title: 'wide arm push-ups',
    description:
        '   •	Begin in your top of a push-up position with your arms straight and your wrists underneath your shoulders.  ' +
            '   •	Step each hand a few inches wider.  ' +
            '   •	As you inhale, bend your elbows out to the sides as you lower your torso toward the floor. Then straighten your arms. This counts as one rep.  ' +
            '   •	Complete as many reps as you can with proper form.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/wideArmPush-ups.jpg',
    gif: 'img/gifs/wideArmPush-ups.gif',
  ),

  ExerciseModel(
    title: 'cobra stretches',
    description: '   Stretches your lower back.  ' +
        '   Lie face down, and keep your hands by your shoulders as if you were doing a pushup.  ' +
        '   Point your feet directly downward; this helps lengthen your spine.  ' +
        '   Now, very slowly push your torso up as far as is comfortable--or until your hips begin to come off the floor.  ' +
        '   It should take you 5 seconds to reach the top of the position; lower yourself just as slowly.  ' +
        '   Start with six repetitions and gradually work up to 15.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/cobraStretches.jpg',
    gif: 'img/gifs/cobraStretches.gif',
  ),

  ExerciseModel(
    title: 'hindu push-ups',
    description: '   1. Start: Downward Dog  ' +
        '   Your body should look like a ‘V’ in downward dog to start. In this position, push your arms into the floor and drive your head towards your toes. You will feel your shoulders stabilize, your core tighten, and a stretch down your hamstring?s and quads. This is your sign that you’re ready to start.  ' +
        '   2. Elbows  ' +
        '   The push-up starts when you bend your elbows. Stay controlled as you bring your head down to the floor and back up to the sky to upward dog. Keep your elbows in towards your body. Don’t let them flare out.  ' +
        '   Imagine you are climbing under a fence. Get your head low enough to get under the fence, then bring it back to the sky on the other side, finishing in upward dog.  ' +
        '   3. Shoulders  ' +
        '   Think about getting your shoulders away from your ears at the top of your Hindu push-up. This will prevent you from slouching in upward dog and keep your shoulders active. Get tall through the top of your head and keep your shoulders back and down.  ' +
        '   4. Next Rep: Back to Downward Dog  ' +
        '   Keep your shoulders and thighs active, exhale as you move back to downward dog. No need to go back under the fence. Simply raise your hips and make your body look like a ‘V’ again.  ' +
        '   The key: don’t bend your elbows.  ' +
        '   5. Breathing  ' +
        '   Your breath should be controlled during Hindu push-ups. Take a deep breath in when you start (top of downward dog). Let that breath go when you return for the next rep (as you raise your hips into downward dog).  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/hinduPush-ups.jpg',
    gif: 'img/gifs/hinduPush-ups.gif',
  ),

  ExerciseModel(
    title: 'knee push-ups',
    description:
        '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
    time: '1 min',
    image: 'img/AllImageData/kneePush-ups.jpg',
    gif: 'img/gifs/kneePush-ups.gif',
  ),

  // ExerciseModel(
  //   title: 'shoulder stretch',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/shoulderStretch.jpg',
  //   gif: 'img/gifs/shoulderStretch.gif',
  // ),

  ExerciseModel(
    title: 'staggered push-ups',
    description:
        '  Start in a standard push-up position (as described above), with your feet together or no more than 12 inches apart, hands flat on the ground below your shoulders, and arms straight. Breathe in as you bend your elbows—keep them tracking back alongside your body—to lower your chest to slightly below the level of your bent elbow, and then breathe out as you push back up to the starting position for one repetition.  ',
    time: '1 min',
    image: 'img/AllImageData/staggeredPush-ups.jpg',
    gif: 'img/gifs/staggeredPush-ups.gif',
  ),

  ExerciseModel(
    title: 'decline push-ups',
    description: '     ' +
        '   •	Assume a standard push-up position with your hands on the floor and your feet elevated on a sturdy bench or box. Your arms should be straight, hands slightly wider than shoulder-width, and body straight from head to heels.  ' +
        '   •	Keeping your body straight and core engaged, slowly lower your chest as close to the floor as possible.  ' +
        '   •	Return to the starting position.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/declinePush-ups.jpg',
    gif: 'img/gifs/declinePush-ups.gif',
  ),

  ExerciseModel(
    title: 'box push-ups',
    description:
        '   Start with your left and right hands placed on two separate boxes of medium height. Perform a push-up by lowering your chest until your shoulder blades are locked. Return to start position.   ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/boxPush-ups.jpg',
    gif: 'img/gifs/boxPush-ups.gif',
  ),

  ExerciseModel(
    title: 'spiderman push-ups',
    description: '   Spiderman pushups require very little to get started. All you need is an open space roughly the size of a yoga mat (with a little extra elbow room to each side), and a mat for comfort (if desired).   ' +
        '   1.	Start in a plank position, your hands slightly wider than shoulder-distance apart, but directly under your shoulders. Your body should form a straight line from heels to head.  ' +
        '   2.	Tighten your core and begin bending your elbows, so they angle backward at 45-degrees from your body as you lower your chest toward the floor. Inhale as you move through the lowering phase of the exercise.  ' +
        '   3.	Pick up your right foot and draw your right knee up and out, so your right knee reaches your elbow just as your chest hovers about an inch or two from the mat.  ' +
        '   4.	Reverse the movement, extending your elbows to press up to the plank position as you simultaneously extend your knee and return your right foot to the floor. Exhale as you press yourself back to the starting position.  ' +
        '   5.	Repeat to the opposite side, this time bringing your left knee to your left elbow.  ' +
        '   6.	When you complete a full set (aim for at least 8-10 pushups, alternating sides), place your knees on the ground and kneel before you move to standing.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/spidermanPush-ups.jpg',
    gif: 'img/gifs/spidermanPush-ups.gif',
  ),

  // chest end

  //leg starts
  ExerciseModel(
    title: 'Donkey kicks right',
    description:
        '   Begin on the floor, in an all fours position with your knees set underneath your hips and your hands at shoulder width. Maintain a neutral back and engage your core throughout. Then, keeping a 90 degree bend in your right knee, pick it up just off the floor and lift it out behind you. The aim is to get your knee to the same height as your hips and back and your right foot set up above right left knee. Don’t over-arch your lower back to do this, keep you back in a safe neutral position.  ' +
            '   Then lower the right knee down towards the floor under your right hip without resting it down and repeat this smooth controlled kick back movement with the right leg for the required duration.  ' +
            '     ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/donkeyKicksRight.jpg',
    gif: 'img/gifs/donkeyKicksRight.gif',
  ),

  ExerciseModel(
    title: 'Side-lying leg lift left',
    description: '   This simple move targets the outer thighs. But pay attention to detail on this move, you want to move your hip joint not your back.   ' +
        '   •	Start on your side with your legs extended, flexing both feet. Place your top hand on the ground in front of your abs and your supporting arm under your head. Make sure your bottom leg stays extended for the duration of the series.  ' +
        '   •	Keeping the energy reaching out through your flexed heels, lift your top leg up about six to eight inches from the floor. From here, make tiny pulses upward 20 times. Holding your leg at the highest point of your lift, draw one-inch circles with your heel for 20 reps.  ' +
        '   •	Keeping your top leg lifted, bend and straighten your knee. Do this 20 times while not letting your thigh lower as you press through the heel to lengthen your top leg to the straightened position. For an even greater burn, finish this series with lifts in a bigger range of motion, taking the foot all the way toward the ceiling and back down, 10 to 20 times.  ' +
        '     ' +
        '     ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/side-lyingLegLiftLeft.jpg',
    gif: 'img/gifs/side-lyingLegLiftLeft.gif',
  ),

  ExerciseModel(
    title: 'Donkey kicks left',
    description:
        '   Begin on the floor, in an all fours position with your knees set underneath your hips and your hands at shoulder width. Maintain a neutral back and engage your core throughout. Then, keeping a 90 degree bend in your left knee, pick it up just off the floor and lift it out behind you. The aim is to get your knee to the same height as your hips and back and your left foot set up above left right knee. Don’t over-arch your lower back to do this, keep you back in a safe neutral position.  ' +
            '   Then lower the left knee down towards the floor under your left hip without resting it down and repeat this smooth controlled kick back movement with the left leg for the required duration.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/donkeyKicksLeft.jpg',
    gif: 'img/gifs/donkeyKicksLeft.gif',
  ),

  ExerciseModel(
    title: 'Side-lying leg lift right',
    description: '   This simple move targets the outer thighs. But pay attention to detail on this move, you want to move your hip joint not your back.   ' +
        '   •	Start on your side with your legs extended, flexing both feet. Place your top hand on the ground in front of your abs and your supporting arm under your head. Make sure your bottom leg stays extended for the duration of the series.  ' +
        '   •	Keeping the energy reaching out through your flexed heels, lift your top leg up about six to eight inches from the floor. From here, make tiny pulses upward 20 times. Holding your leg at the highest point of your lift, draw one-inch circles with your heel for 20 reps.  ' +
        '   •	Keeping your top leg lifted, bend and straighten your knee. Do this 20 times while not letting your thigh lower as you press through the heel to lengthen your top leg to the straightened position. For an even greater burn, finish this series with lifts in a bigger range of motion, taking the foot all the way toward the ceiling and back down, 10 to 20 times.  ' +
        '     ' +
        '     ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/side-lyingLegLiftRight.jpg',
    gif: 'img/gifs/side-lyingLegLiftRight.gif',
  ),

  ExerciseModel(
    title: 'Knee to chest stretch left',
    description: '   1. Stand erect with your feet hip-width apart, chest out and shoulders back, maintaining the natural curvature in your back. Your knees should be unlocked and arms by your sides. This is your start position.   ' +
        '   2. Raise one knee as high as you can directly in front of you, keeping your weight on your back foot, and cusp your hands to gently lift and momentarily hold the top position. Keep your body upright without bending over.   ' +
        '   3. Disengage your hands and allow the foot to strike the floor in front of the other one, toes aiming directly forward.  ' +
        '    4. Step forward with your opposite leg, repeating the move to the other side, and continue moving forward for the required number of repetitions.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/kneeToChestStretchLeft.jpg',
    gif: 'img/gifs/kneeToChestStretchLeft.gif',
  ),

  ExerciseModel(
    title: 'Sumo squat calf raises with wall ',
    description:
        '   This exercise works your calves, glutes and inner thighs. Stand with your hands on the wall and your feet a little wider than shoulder width apart. Lower your body until your thighs are parallel to the floor. Lift your heels up and down.  Don\'t lean your body forward.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/sumoSquatCalfRaisesWithWall.jpg',
    gif: 'img/gifs/sumoSquatCalfRaisesWithWall.gif',
  ),

  ExerciseModel(
    title: 'Wall calf raises',
    description: '   This is a good stretch to target your gastrocnemius and simultaneously improve ankle flexibility, Braun says.  ' +
        '   •	Standing arm’s distance away from a wall, step one foot back and slightly bend your front knee.  ' +
        '   •	Lean forward to push your hands against the wall, and press your back heel down into the ground for a deep stretch. Make sure your leg is straight.  ' +
        '   •	Switch legs and repeat.  ' +
        '   •	To isolate the soleus, try a variation with your back leg slightly bent.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/wallCalfRaises.jpg',
    gif: 'img/gifs/wallCalfRaises.gif',
  ),

  ExerciseModel(
    title: 'Squats (double time)',
    description:
        '   Start by holding the kettlebell in the rack position: Grip firmly by the handles and pull fists to chin, keeping elbows pointed straight down. Keeping your arms tucked in close to your body, squat down as low as you can and then stand back up to starting position. Repeat.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/squats(doubleTime).jpg',
    gif: 'img/gifs/squats(doubleTime).gif',
  ),

  ExerciseModel(
    title: 'Squats',
    description: '   Here\'s a primer on how exactly to do the perfect squat.  ' +
        '   1.	Stand facing forward with your chest up.  ' +
        '   2.	Place your feet shoulder-width apart or slightly wider. Extend your hands straight out in front of you to help keep your balance. You can also hold your hands at chest level or place them behind your head.  ' +
        '   3.	Bend at your knees and hips, sticking your butt out like you\'re sitting into an imaginary chair. Keep your chest lifted and your spine neutral, and do not let your lower back round.  ' +
        '   4.	Squat down as low as you can, keeping your head and chest lifted. Keep your knees over your ankles and press your weight back into your heels.  ' +
        '   5.	Keep your body tight, and push through your heels to bring yourself back to the starting position. This is one rep.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/squats.jpg',
    gif: 'img/gifs/squats.gif',
  ),

  ExerciseModel(
    title: 'Backward lunge ',
    description: '   Here are the steps to performing Backward Lunge:  ' +
        '   1) Stand tall with your feet hip distance apart.  ' +
        '   2) Take a large step backward and lower your body toward the floor.  Both legs should be bent at a 90-degree angle at the bottom of the lunge.  Rise back to start and repeat.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/backwardLunge.jpg',
    gif: 'img/gifs/backwardLunge.gif',
  ),

  ExerciseModel(
    title: 'Side hop',
    description:
        '   Start off in a standing position with your feet at hip width and your hands on your hips. Make sure you have space to jump out to each side of where you are standing.  ' +
            '   Crouch down by bending your knees and hips, then jump sideways approximately a yard or as much as you can safely manage. As you land, bend your hips and knees again to absord your impact and prepare for your next sideways jump back in the other direction to return to your start position.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/sideHop.jpg',
    gif: 'img/gifs/sideHop.gif',
  ),

  ExerciseModel(
    title: 'Knee to chest stretch right',
    description: '   1. Stand erect with your feet hip-width apart, chest out and shoulders back, maintaining the natural curvature in your back. Your knees should be unlocked and arms by your sides. This is your start position.   ' +
        '   2. Raise one knee as high as you can directly in front of you, keeping your weight on your back foot, and cusp your hands to gently lift and momentarily hold the top position. Keep your body upright without bending over.   ' +
        '   3. Disengage your hands and allow the foot to strike the floor in front of the other one, toes aiming directly forward.  ' +
        '    4. Step forward with your opposite leg, repeating the move to the other side, and continue moving forward for the required number of repetitions.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/kneeToChestStretchRight.jpg',
    gif: 'img/gifs/kneeToChestStretchRight.gif',
  ),

  // ExerciseModel(
  //   title: 'Calf raise with splayed foot ',
  //   description: 'This is a sample description',
  //   time: '1 min',
  //   image: 'img/AllImageData/calfRaiseWithSplayedFoot.jpg',
  //   gif: 'img/gifs/calfRaiseWithSplayedFoot.gif',
  // ),
  ExerciseModel(
    title: 'Fire hydrant left ',
    description:
        '   1.	Start on your hands and knees. Place your shoulders above your hands and your hips above your knees. Tighten your core and look down.  ' +
            '   2.	Lift your left leg away from your body at a 45-degree angle. Keep your knee at 90 degrees.  ' +
            '   3.	Lower your leg to starting position to complete 1 rep.  ' +
            '   4.	Do 3 sets of 10 reps. Repeat with the other leg.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/fireHydrantLeft.jpg',
    gif: 'img/gifs/fireHydrantLeft.gif',
  ),
  ExerciseModel(
    title: 'Fire hydrant right',
    description:
        '   1.	Start on your hands and knees. Place your shoulders above your hands and your hips above your knees. Tighten your core and look down.  ' +
            '   2.	Lift your right leg away from your body at a 45-degree angle. Keep your knee at 90 degrees.  ' +
            '   3.	Lower your leg to starting position to complete 1 rep.  ' +
            '   4.	Do 3 sets of 10 reps. Repeat with the other leg.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/fireHydrantRight.jpg',
    gif: 'img/gifs/fireHydrantRight.gif',
  ),

  ExerciseModel(
    title: 'Side leg circles left ',
    description:
        '  This exercise works your thighs, glutes and lower abs. Lie on your right side with your head resting on your hand. Lift your left leg and rotate it in circles.  ',
    time: '1 min',
    image: 'img/AllImageData/sideLegCirclesLeft.jpg',
    gif: 'img/gifs/sideLegCirclesLeft.gif',
  ),

  ExerciseModel(
    title: 'Side leg circles right',
    description:
        '  This exercise works your thighs, glutes and lower abs. Lie on your right side with your head resting on your hand. Lift your left leg and rotate it in circles.  ',
    time: '1 min',
    image: 'img/AllImageData/sideLegCirclesRight.jpg',
    gif: 'img/gifs/sideLegCirclesRight.gif',
  ),

  ExerciseModel(
    title: 'Single leg calf hop left',
    description:
        '   This exercise strengthens your calf muscles. Stand straight with your left leg lifted. Hop up and down on your right foot.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/singleLegCalfHopLeft.jpg',
    gif: 'img/gifs/singleLegCalfHopLeft.gif',
  ),
  ExerciseModel(
    title: 'Single leg calf hop right ',
    description:
        '   This exercise strengthens your calf muscles. Stand straight with your right leg lifted. Hop up and down on your left foot.  ' +
            '     ',
    time: '1 min',
    image: 'img/AllImageData/singleLegCalfHopRight.jpg',
    gif: 'img/gifs/singleLegCalfHopRight.gif',
  ),

  ExerciseModel(
    title: 'Sumo squat',
    description:
        'Step 1: \n Stand with your feet slightly wider than hip-width apart and turn your feet out, externally rotating your hips.\n Step 2 With your hands clasped together at your chest, push your hips back and squat down, keeping your back straight and your upper body lifted. Make sure you’re pushing through your heels and engaging your inner thighs as you come back to your starting position.',
    time: '1 min',
    image: 'img/AllImageData/sumoSquat.jpg',
    gif: 'img/gifs/sumoSquat.gif',
  ),

  ExerciseModel(
    title: 'Wall sit',
    description: '   You can perform this exercise anywhere you have access to a flat wall.   ' +
        '   1.	Start with your back against a wall with your feet shoulder width and about 2 feet from the wall.  ' +
        '   2.	Engage your abdominal muscles and slowly slide your back down the wall until your thighs are parallel to the ground.  ' +
        '   3.	Adjust your feet so your knees are directly above your ankles (rather than over your toes).  ' +
        '   4.	Keep your back flat against the wall.  ' +
        '   5.	Hold the position for 20 to 60 seconds.  ' +
        '   6.	Slide slowly back up the wall to a standing position.  ' +
        '   7.	Rest 30 seconds and repeat the exercise three times. Increase your hold time by five seconds as you increase your strength.  ',
    time: '1 min',
    image: 'img/AllImageData/wallSit.jpg',
    gif: 'img/gifs/wallSit.gif',
  ),

  ExerciseModel(
    title: 'Reverse flutter kicks',
    description:
        '   •	Step 1: Lie face down on a flat bench, positioning your hips on its edge. Your legs should be straight with your toes high off the floor with your arms on top of the bench. Hold onto the front edge.   ' +
            '   •	Step 2: Squeeze your glutes and hamstring?s. Straighten your legs until they are level with your hips. This is the starting position.   ' +
            '   •	Step 3: Lift your left leg higher than your right leg.   ' +
            '   •	Step 4: Lower your left leg as you lift the right one.   ' +
            '   •	Step 5: Continue moving in this manner until you have completed the number of reps in your set.   ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/reverseFlutterKicks.jpg',
    gif: 'img/gifs/reverseFlutterKicks.gif',
  ),

  ExerciseModel(
    title: 'Burpees',
    description:
        '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
            '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
            '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/burpees.jpg',
    gif: 'img/gifs/burpees.gif',
  ),

  ExerciseModel(
    title: 'Right squad stretch with wall',
    description:
        '  This exercise stretches your quadriceps. Stand with your right hand on the wall. Grasp your left ankle to bring your calf close to your thigh. Hold this position.   ',
    time: '1 min',
    image: 'img/AllImageData/rightQuadStretchWithWall.jpg',
    gif: 'img/gifs/rightQuadStretchWithWall.gif',
  ),

  ExerciseModel(
    title: 'Bottom leg lift left',
    description:
        'This exercise strengthens your inner thighs. Lie on your left side with head resting on your hand. Put your right foot forward on the floor. Lift your left leg up and down.',
    time: '1 min',
    image: 'img/AllImageData/bottomLegLiftLeft.jpg',
    gif: 'img/gifs/bottomLegLiftLeft.gif',
  ),

  ExerciseModel(
    title: 'Bottom leg lift right',
    description:
        'This exercise strengthens your inner thighs. Lie on your right side with head resting on your hand. Put your left foot forward on the floor. Lift your right leg up and down.  ',
    time: '1 min',
    image: 'img/AllImageData/bottomLegLiftRight.jpg',
    gif: 'img/gifs/bottomLegLiftRight.gif',
  ),

  ExerciseModel(
    title: 'Glute kick back left ',
    description: '   1. Get into all fours, with a straight spine, and contract your core muscles.   ' +
        '   2. Extend your left leg back and up until your thigh is parallel with the ground. The sole of your left foot should be facing the ceiling.   ' +
        '   3. Contract your glute at the top of the move and hold for a beat.   ' +
        '   4. Return to your starting position without touching your knee to the ground and repeat.   ' +
        '   5. Do 12 to 20 repetitions, then switch sides.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/gluteKickBackLeft.jpg',
    gif: 'img/gifs/gluteKickBackLeft.gif',
  ),

  ExerciseModel(
    title: 'Calf stretch left ',
    description:
        '   Step 1: Stand about an arm’s length in front of a wall. Place the right leg in front of the left. Reach both arms to the wall.  ' +
            '   Step 2: Press the back (left) heel into the floor and straighten the back leg while keeping the front leg bent. Hold this position for 15–20 seconds.  ' +
            '   Step 3: Repeat the stretch on the opposite side.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/calfStretchLeft.jpg',
    gif: 'img/gifs/calfStretchLeft.gif',
  ),

  ExerciseModel(
    title: 'Wall resisting single leg calf raise right',
    description:
        'This exercise strengthens your calf muscles. Stand a big step away from the wall with your hands against the wall and your right foot on your left ankle. Lift your left heel up and down.',
    time: '1 min',
    image: 'img/AllImageData/wallResistingSingleLegCalfRaiseRight.jpg',
    gif: 'img/gifs/wallResistingSingleLegCalfRaiseRight.gif',
  ),
  ExerciseModel(
    title: 'Wall resisting single leg calf raise left',
    description:
        'This exercise strengthens your calf muscles. Stand a big step away from the wall with your hands against the wall and your right foot on your left ankle. Lift your left heel up and down.',
    time: '1 min',
    image: 'img/AllImageData/wallResistingSingleLegCalfRaiseRight.jpg',
    gif: 'img/gifs/wallResistingSingleLegCalfRaiseRight.gif',
  ),

  ExerciseModel(
    title: 'Left quad stretch with wall',
    description:
        '  This exercise stretches your quadriceps. Stand with your right hand on the wall. Grasp your left ankle to bring your calf close to your thigh. Hold this position.   ',
    time: '1 min',
    image: 'img/AllImageData/leftQuadStretchWithWall.jpg',
    gif: 'img/gifs/leftQuadStretchWithWall.gif',
  ),

  ExerciseModel(
    title: 'Curtsy lunges',
    description:
        'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
    time: '1 min',
    image: 'img/AllImageData/curtsyLunges.jpg',
    gif: 'img/gifs/curtsyLunges.gif',
  ),

  ExerciseModel(
    title: 'Glute kick back right',
    description: '   1. Get into all fours, with a straight spine, and contract your core muscles.   ' +
        '   2. Extend your right leg back and up until your thigh is parallel with the ground. The sole of your right foot should be facing the ceiling.   ' +
        '   3. Contract your glute at the top of the move and hold for a beat.   ' +
        '   4. Return to your starting position without touching your knee to the ground and repeat.   ' +
        '   5. Do 12 to 20 repetitions, then switch sides.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/gluteKickBackRight.jpg',
    gif: 'img/gifs/gluteKickBackRight.gif',
  ),

  ExerciseModel(
    title: 'Calf stretch right',
    description:
        '   Step 1: Stand about an arm’s length in front of a wall. Place the right leg in front of the left. Reach both arms to the wall.  ' +
            '   Step 2: Press the back (left) heel into the floor and straighten the back leg while keeping the front leg bent. Hold this position for 15–20 seconds.  ' +
            '   Step 3: Repeat the stretch on the opposite side.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/calfStretchRight.jpg',
    gif: 'img/gifs/calfStretchRight.gif',
  ),

  ExerciseModel(
    title: 'Lying stretches raises',
    description: '   Step 1: Start by lying on a bench (or your bed) with your hips just off the edge and your feet down so your tip-toes are on the floor. Breathe in.  ' +
        '     ' +
        '   Step 2: As you breathe out, raise your legs up towards you, rolling your pelvis under and up to engage your lower abs.  ' +
        '     ' +
        '   Step 3: As you reach the top point, your lower back should be slightly off the bench and you should feel a squeeze in your abs.  ' +
        '     ' +
        '   Step 4: Breathe in as you slowly lower your legs back down past the point of the bench, so you get the stretch in your abs again. (Your toes do not need to touch the floor, and your lower back should not arch too much)  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/lyingStretchesRaises.jpg',
    gif: 'img/gifs/lyingStretchesRaises.gif',
  ),

  //leg ends

  //shoulder starts

  ExerciseModel(
    title: 'Cat cow pose',
    description: '   1.	Start on all fours with shoulders over wrists and hips over knees. (Toes can be tucked or untucked.)   ' +
        '   2.	Position knees and ankles parallel to each other, hip-width apart.  ' +
        '   3.	Form an L-shape with your index fingers and thumbs.  ' +
        '   4.	Cow:   ' +
        '   o	Inhale as you arch your spine, pulling your chest forward and lifting your tailbone toward the ceiling.  ' +
        '   o	Lengthen the front side of your torso, and maintain length in your mid- and upper spine.  ' +
        '   5.	Cat:   ' +
        '   o	Exhale as you round your spine, pulling your forehead toward your hips.  ' +
        '   o	Press down through your hands to lift the upper back toward the ceiling.   ' +
        '   o	Tuck your chin to your chest.   ' +
        '   6.	This is one rep. Continue to alternate slowly from Cat to Cow, inhaling as you move into the full extension of Cow, and exhaling as you move into the full flexion of Cat.   ' +
        '   7.	Lengthen each breath as much as possible.  ' +
        '   8.	Lightly squeeze legs toward one another to keep your core engaged and protect the spine.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/catCowPose.jpg',
    gif: 'img/gifs/catCowPose.gif',
  ),

  ExerciseModel(
    title: 'Side arm raise',
    description: '   You don\'t need much room or equipment to perform a side lateral raise. All you need is a set of dumbbells (start with a pair between 5 to 15 pounds if you\'re a beginner), and enough space to raise your arms in a "T" formation out to each side.   ' +
        '   1.	Stand tall, a dumbbell in each hand at your sides, your palms facing in. Position your feet roughly hip-distance apart. Check your posture—roll your shoulders back, engage your core, and look straight ahead.  ' +
        '   2.	Raise your arms simultaneously just a couple inches out to each side and pause. This momentary pause should help ensure you disengage your trapezius muscle from the movement, targeting the deltoids as intended.  ' +
        '   3.	Lift the dumbbells up and out to each side, keeping your arms almost completely straight, stopping when your elbows reach shoulder-height, and your body is forming a "T" shape. Breathe in as you lift the dumbbells.  ' +
        '   4.	Pause and hold for a second at the top of the movement.  ' +
        '   5.	Lower the weights slowly (take about twice as long to lower the weights as you took to lift them), bringing your arms back to your sides. Breathe out as you lower the dumbbells.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/sideArmRaise.jpg',
    gif: 'img/gifs/sideArmRaise.gif',
  ),

  ExerciseModel(
    title: 'Reclined rhomboid squeezes',
    description:
        '   1.	Sit on the ground. Bend your knees and place flat feet on the ground. Lift your arms pointed in front of you. Slightly lean your torso back.  ' +
            '   2.	Bend your elbows until your forearms and upper arms form a sharp angle. Squeeze your shoulders and traps as much as you can.  ' +
            '   3.	Relax your shoulders and return your arms to the starting position. Repeat the exercise according to the training plan.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/reclinedRhomboidSqueezes.jpg',
    gif: 'img/gifs/reclinedRhomboidSqueezes.gif',
  ),

  ExerciseModel(
    title: 'Rhomboid pulls ',
    description:
        'This exercise strengthens your shoulders and upper back muscles.Stand with your feet shoulder width apart.Raise your arms to the shoulder height and parallel to the ground.Bend your elbows, pull your elbows back and squeeze your shoulder blades.Return and repeat.Make sure your arms are parallel to the ground.Keep your triceps contracted.Exhale when you pull back, and inhale when you return.',
    time: '1 min',
    image: 'img/AllImageData/rhomboidPulls.jpg',
    gif: 'img/gifs/rhomboidPulls.gif',
  ),

  ExerciseModel(
    title: 'Prone triceps push ups',
    description: 'This is a sample description',
    time: '1 min',
    image: 'img/AllImageData/proneTricepsPushUps.jpg',
    gif: 'img/gifs/proneTricepsPushUps.gif',
  ),

  ExerciseModel(
    title: 'Side-lying floor stretch left',
    description:
        'Lie on your left side with your left knee slightly bent in front of you and your right leg stretched behind the left leg. Straighten your right arm over your head and gently pull on your right wrist to stretch the right side of your body. Hold this position for a few seconds. ',
    time: '1 min',
    image: 'img/AllImageData/side-lyingFloorStretchLeft.jpg',
    gif: 'img/gifs/side-lyingFloorStretchLeft.gif',
  ),

  ExerciseModel(
    title: 'Side-lying floor stretch right',
    description:
        'Lie on your right side with your right knee slightly bent in front of you and your left leg stretched behind the right leg. Straighten your left arm over your head and gently pull on your left wrist to stretch the left side of your body. Hold this position for a few seconds. ',
    time: '1 min',
    image: 'img/AllImageData/side-lyingFloorStretchRight.jpg',
    gif: 'img/gifs/side-lyingFloorStretchRight.gif',
  ),

  ExerciseModel(
    title: 'Child’s pose',
    description:
        '   1. Allow the knees to rest about two feet apart from one another and touch your big toes to one another.  ' +
            '   2. Sit your hips down on your heels.  ' +
            '   3. Rest your forehead on the ground and extend the arms out from the shoulders so that they are parallel to one another.  ' +
            '   4. Press your hands into the ground to bring your hips closer to your heels.  ' +
            '   5. Hold for 30 seconds to 5 minutes.  ' +
            '    ',
    time: '1 min',
    image: 'img/AllImageData/child’sPose.jpg',
    gif: 'img/gifs/child’sPose.gif',
  ),

  ExerciseModel(
    title: 'Prone triceps push-ups',
    description:
        'This exercise strengthens your triceps. Lie on your stomach with your hands underneath your shoulders and your elbows bent. Slightly raise your chest up. Then return and repeat.',
    time: '1 min',
    image: 'img/AllImageData/proneTricepsPush-ups.jpg',
    gif: 'img/gifs/proneTricepsPush-ups.gif',
  ),

  ExerciseModel(
    title: 'Triceps kickbacks',
    description:
        'Place one knee, shin and foot on a flat bench and bend over to keep your torso parallel to the floor. Grasp the head of the bench with your fingertips. In the outside hand hold a dumbbell. Pick a weight with which you can comfortably manage 12-15 reps. Press and hold that dumbbell-holding arm against your side, with a 90° bend at the elbow. Straighten your arm backwards until it is parallel to the floor. Contract your triceps at that top portion of the lift. Slowly lower until your arm is back at the 90° angle. Repeat for 12-15 reps, then switch arms.',
    time: '1 min',
    image: 'img/AllImageData/tricepsKickbacks.jpg',
    gif: 'img/gifs/tricepsKickbacks.gif',
  ),

  ExerciseModel(
    title: 'Hip hinges',
    description:
        'Stand tall with your feet hip- to shoulder-width apart, and your arms at your sides. Keep your knees “soft” so they have a slight bend, and maintain this knee-position from start to finish. Tense your thighs, glutes, and abs, and pull your shoulders down. Keeping your lower back naturally arched, push your hip and hamstring?s back as far as you can and lower your torso by bending at your hips. Try to lower your torso until it’s parallel to the floor. Reverse the movement, push your hips forward, and return to the starting position. That’s one rep.',
    time: '1 min',
    image: 'img/AllImageData/hipHinges.jpg',
    gif: 'img/gifs/hipHinges.gif',
  ),

  ExerciseModel(
    title: 'Swimmer and superman',
    description:
        'This exercise strengthens your lower back and core muscles. Lie on your stomach with your arms extended straight overhead. Alternately lift your opposite arm and leg at the same time. Repeat the exercise.',
    time: '1 min',
    image: 'img/AllImageData/swimmerAndSuperman.jpg',
    gif: 'img/gifs/swimmerAndSuperman.gif',
  ),

  ExerciseModel(
    title: 'Hover push ups',
    description: '   1. Begin by placing both hands on platform in plank position.  ' +
        '   2. Engage your abs, stabilize your hips while using your left shoulder, arm and chest to push the left side of the platform down to the base in a teeter motion.  ' +
        '   3. Once the platform has made contact with the base, remove your right hand, placing it on the floor, and then remove your left hand, placing it on the floor next to your right hand.  ' +
        '   4. From this position, drop your knees until they are hovering about 2” above the floor.   ' +
        '   5. Walk backwards on all fours in a bear crawl position, keeping your knees just above the floor, at least 4 steps.  ' +
        '   6. Once you reach your desired destination, bear crawl forward, back to the board.  ' +
        '   7. Once you reach the board, place your right hand on the platform, and use your shoulder, arm and chest to push it down to the base.   ' +
        '   8. Then place left hand on platform and level it out as you bring your torso back into plank position.   ' +
        '   9. Perform one or more push ups.  ' +
        '   10. Repeat steps 1 through 9 for desired amount of repetitions.   ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/hoverPushUps.jpg',
    gif: 'img/gifs/hoverPushUps.gif',
  ),

  ExerciseModel(
    title: 'Hyperextension',
    description:
        'Slide to the edge a flat bench until your hips hang off the end. With your body straight, cross your arms in front of you. Bending forward slowly at the waist, keeping your back flat, until you almost touch the floor. Slowly raise your torso back to the initial position as you exhale.',
    time: '1 min',
    image: 'img/AllImageData/hyperextension.jpg',
    gif: 'img/gifs/hyperextension.gif',
  ),

  ExerciseModel(
    title: 'Supine push-ups',
    description: '   •	Step 1: Lay down with your back flat on the floor.   ' +
        '   •	Step 2: Feet also flat on the floor and your knees pointed up towards the ceiling.   ' +
        '   •	Step 3: Arms are out to your side even with shoulder height.   ' +
        '   •	Step 4: Push up on your elbows and raise your upper back up off the ground.   ' +
        '   •	Step 5: Lower your upper back down to the floor.   ' +
        '   •	Step 6: This completes one repetition.   ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/supinePush-ups.jpg',
    gif: 'img/gifs/supinePush-ups.gif',
  ),

  ExerciseModel(
    title: 'Reverse push-ups',
    description: '   While performing this exercise, it\'s best to wear shoes with proper grip to prevent your feet from slipping.  ' +
        '   •	Begin in a traditional Push-Up position with your arms extended and your hands placed slightly wider than shoulder-width apart.  ' +
        '   •	Allow your elbows to bend and lower your body until your chest is slightly above the floor. Maintain proper form as with a standard Push-Up.  ' +
        '   •	Pause for a second.  ' +
        '   •	Bend at your knees and push your butt toward your ankles while applying slight downward force into your hands until your knees are at a 90-degree angle (could be more for those with longer legs).  ' +
        '   •	Slide your body forward, allowing your shoulders to rotate naturally until you are back in a traditional push-up position.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/reversePush-ups.jpg',
    gif: 'img/gifs/reversePush-ups.gif',
  ),

  ExerciseModel(
    title: 'Pike push-ups',
    description: '   1.	Start in a plank position on the floor, with hands firmly on the floor, right under your shoulders. Press toes firmly into the floor too.  ' +
        '   2.	Keep core tight and back flat and engage your glutes and hamstring?s. Your whole body should be neutral and in a straight line.  ' +
        '   3.	Lift hips up and back until your body forms an inverted V shape. Keep arms and legs as straight as possible.  ' +
        '   4.	Start to bend elbows, and then lower your entire upper body toward the floor.  ' +
        '   5.	Stay there for a moment, then slowly push back up until your arms are straight and you’re in the inverted V position. Make sure you maintain control throughout the movement.  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/pikePush-ups.jpg',
    gif: 'img/gifs/pikePush-ups.gif',
  ),

  ExerciseModel(
    title: 'Floor y raises',
    description:
        '  Lie face down on the floor with your arms fully extended and your thumbs pointing up, your body should be in the shape of the letter “Y”. Raise your arms off the ground as far as you can and pause them at the top for 2 seconds. Slowly go back to the start position, and repeat the exercise.   ',
    time: '1 min',
    image: 'img/AllImageData/floorYRaises.jpg',
    gif: 'img/gifs/floorYRaises.gif',
  ),

  ExerciseModel(
    title: 'Reverse snow angels ',
    description: '   1. Lay your front side on the floor   ' +
        '   2. Stretch out the arms to the front  ' +
        '   3. The palms point to the floor, the legs are stretched out, the toes on the floor   ' +
        '   4. Lift chest, arms and legs slightly, they hover across the floor  ' +
        '   5. Move the arms to the pelvis in a bow and the legs apart, the limbs do not have any contact to the floor   ' +
        '   6. Come back controlled to the starting position  ' +
        '   7. Now you can rest the limbs on the ground for a moment   ' +
        '   8. Begin with the next rep right away  ' +
        '    ',
    time: '1 min',
    image: 'img/AllImageData/reverseSnowAngels.jpg',
    gif: 'img/gifs/reverseSnowAngels.gif',
  ),

  //shoulder ends
  // men exercise list ends here
];

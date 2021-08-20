import 'package:care_4_u_project/Datamodel/WorkoutModels/UniqueExercises/AllData.dart';

List<ExerciseModel> beginnerYogaModelList = [
// yoga exercise starts here
  //beginner
  ExerciseModel(
    title: 'Low Plank/ Chaturanga Dandasana',
    description:
        'Start in Plank Pose with your palms flat on the floor, hands shoulder-width apart, shoulders stacked directly above your wrists, legs extended, and core engaged.Slowly lower down to a Low Plank by bending your elbows, keeping them tucked in close to the side of your body, until they form 90-degree angles.\nHold for 1 breath.',
    time: '1 min',
    image: 'img/AllImageData/yoga/chaturangDhandasana.jpg',
    gif: 'img/gifs/lowPlank/ChaturangaDandasana.gif',
  ),

  ExerciseModel(
    title: 'Half Pigeon Pose/ Ardha Kapotasana',
    description:
        'From Downward-Facing Dog, extend your left leg high, and then bring your leg underneath your body and place it in front of you, with your shin parallel to the top of your mat.\nExtend your right leg straight behind you. Rest the top of your foot on the floor.\nKeep your left foot flexed. Try to keep your right hip as close to the mat as you can. If it lifts off the floor, bring your left foot in a little closer to your body.\nStay upright for three breaths. Then, fold over and rest your head on the ground for 5–10 breaths.\n\n\nRepeat on the other leg.',
    time: '1 min',
    image: 'img/AllImageData/yoga/ardhaKapotasana.jpg',
    gif: 'img/gifs/halfPigeonPose/ArdhaKapotasana.gif',
  ),

  ExerciseModel(
    title: 'Plank Pose/ Kumbhakasana',
    description:
        'Start on all fours, with your knees under your hips and your hands flat on the floor directly underneath your shoulders.\nLift your knees off the floor and extend your legs out behind you. You should now be on your toes and your hands, with your body forming one long line\nKeep your palms flat on the floor, hands shoulder-width apart, shoulders stacked directly above your wrists, and core engaged. Keep your neck and spine in a neutral position by looking down at the top of your mat.\n\n\nHold this position for 3-5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/kumbhakasanaPlankpose.jpg',
    gif: 'img/gifs/plankPose/Kumbhakasana.gif',
  ),

  ExerciseModel(
    title: 'Upward-Facing Dog/ Urdhva Mukha Svanasana',
    description:
        'From Low Plank/Chaturanga, drop your hips down to the floor and flip your toes over so the tops of your feet touch the floor.\nTighten your core and straighten your arms to push your chest up. Pull your shoulders back, squeeze your shoulder blades, and tilt your head toward the ceiling, to open up your chest.',
    time: '1 min',
    image: 'img/AllImageData/yoga/upwardFacingdog.jpg',
    gif: 'img/gifs/upward-FacingDog/UrdhvaMukhaSvanasana.gif',
  ),

  ExerciseModel(
    title: 'Mountain Pose/ Tadasana',
    description:
        'Stand with your toes together and heels slightly apart.\nSpread your toes and place your weight evenly through both feet. Engage your core and tuck your hips under a bit so your tailbone is pointing down toward the floor. Relax your shoulders and roll them back and down.\nInhale and reach your arms overhead, while pressing down into your feet. You may also put your hands in prayer position in front of your chest, or rest them by your sides—all are commonly used variations, and your instructor may cue one specifically or give you the choice.\nTake long, slow, deep breaths in and out of your nose.\n\n\nHold for 3–5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/mountainPose.jpg',
    gif: 'img/gifs/mountainPose/Tadasana.gif',
  ),

  ExerciseModel(
    title: 'Crescent Lunge/ Utthita Ashwa Sanchalanasana',
    description:
        'Take a big step forward with your left foot to start in a staggered stance, with your feet almost mat-length apart.\nBend your front knee and keep your back leg straight and heel lifted off the floor. Try to bend your front leg so that your thigh is parallel to the floor. Square your hips toward the front.\nExtend your arms toward the ceiling on either side of your head and stretch up as you also press into the mat and feel the stretch in your hips.\nHold for 5 breaths and repeat on the other side.\nTo move into Low Lunge/Anjaneyasana, simply drop your back knee to the floor, keeping the leg extended long and the shin flat on the mat.',
    time: '1 min',
    image: 'img/AllImageData/yoga/utthithaAshwaSanchalanasana.jpg',
    gif: 'img/gifs/crescentLunge/UtthitaAshwaSanchalanasana.gif',
  ),

  ExerciseModel(
    title: 'Tree/ Vrksasana',
    description:
        'Start in mountain pose with your toes together and heels slightly apart.\nBring your right foot to the inner thigh of your left leg. Squeeze your foot and inner thigh together. The knee of your right leg should be turned out and your right thigh facing down toward the ground at a 45-degree angle.\nOnce you’ve found your balance, lift your hands to prayer position in front of your chest (as shown), or up overhead if that feels better for you.\nKeep your gaze focused on a fixed point in front of you to help stay balanced.\n\n\nHold for 5–10 breaths, then switch sides.',
    time: '1 min',
    image: 'img/AllImageData/yoga/vrksasana.jpg',
    gif: 'img/gifs/tree/Vrksasana.gif',
  ),

  ExerciseModel(
    title: 'Downward-Facing Dog/ Adho Mukha Svanasana',
    description:
        'Start on your hands and knees, with your hands stacked under your shoulders and knees under your hips.\nSpread your hands wide and press your index finger and thumb into your mat.\nLift your tailbone and press your butt up and back, drawing your hips toward the ceiling. Straighten your legs as best as you can and press your heels gently toward the floor.\nYour head should be between your arms, facing your knees, and your backs should be flat.\n\n\nHold for 5–10 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/downwardFacingDog.jpg',
    gif: 'img/gifs/downward-FacingDog/AdhoMukhaSvanasana.gif',
  ),

  ExerciseModel(
    title: 'Warrior II/ Virabhadrasana II',
    description:
        'Take a big step forward with your left foot to start in a staggered stance, with your feet almost mat-length apart.\nExtend your arms so that they are parallel to the floor.\nBend your left knee so that it\'s at or near a 90-degree angle, your thigh parallel to the floor, while keeping the right leg straight.\nPoint your left toes forward and turn your right foot out to the right so that it\'s perpendicular to your left foot. Your left heel should be in line with the arch of your right foot.\nAt the same time, twist your torso to the right so that your left hip is facing toward the front of the room and your right hip is facing toward the back. Your left arm and your head should both be pointing forward and your right arm should be pointing back.\n\n\nHold for 1–5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/WarriorII.jpg',
    gif: 'img/gifs/warriorII/VirabhadrasanaII.gif',
  ),

  ExerciseModel(
    title: 'Dancers Pose/ Natarajasana',
    description:
        'Stand tall with your feet together.\nBend your left knee and bring your left foot toward your glutes. Grab onto the inner arch of your left foot with your left hand and slowly lift your foot toward the ceiling. At the same time, reach your right arm forward and up toward the ceiling.\nActively press down into the floor with your entire right foot as you start to open your chest and pull your lifted leg up. Keep your chest lifted.\n\n\nHold on one side for 5-10 breaths, and then switch sides.',
    time: '1 min',
    image: 'img/AllImageData/yoga/dancersPose.jpg',
    gif: 'img/gifs/dancersPose/Natarajasana.gif',
  ),

  ExerciseModel(
    title: 'Seated Forward Fold/ Paschimottanasana',
    description:
        'Sit on the floor with your legs extended in front of you. Flex your feet. Sit up tall with a straight back.\nBending from your hips and keeping your flat back, fold your upper body over your lower body.\nIf you are able to, grab onto the outside of each foot, or your ankles or shins. Release your neck and let your head hang heavy.\n\n\nHold for 5–10 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/seatedForwardfold.jpg',
    gif: 'img/gifs/seatedForwardFold/Paschimottanasana.gif',
  ),

  ExerciseModel(
    title: 'Triangle/ Trikonasana',
    description:
        'Start in Warrior II.\nStraighten your front leg. Then, reach forward with your left hand toward the ground. Tilt your torso forward and rotate it open to the right side.\nRotate your arms to 6 and 12 o’clock. Rest your left hand on your shin, or the floor if you can, and extend your top arm fingers toward the ceiling.\n\n\nHold for 5–10 breaths, then switch sides.',
    time: '1 min',
    image: 'img/AllImageData/yoga/trianglePose.jpg',
    gif: 'img/gifs/triangle/Trikonasana.gif',
  ),
];

List<ExerciseModel> advancedYogaModelList = [
  //advanced starts
  ExerciseModel(
    title: 'Side Plank Knee Crunch',
    description:
        'Lay on left side. Place left hand on the ground and push upper body off the ground, lifting hips until the only things touching are the edges of your feet and your hand.\n\nLift right arm and right knee, bend, then bring them together until elbow touches knee. Hold the side crunch for five slow breaths.\nSets: 5 slow breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/sidePlankkneecrunch.jpg',
    gif: 'img/gifs/sidePlankKneeCrunch.gif',
  ),

  ExerciseModel(
    title: 'Revolved Reverse Warrior',
    description:
        'Start in a wide stance, right toes pointing out to the side and left toes at an angle. Bend your right knee and lunge forward with arms extended to the sides (warrior II pose). Arch back and lean back over left leg, resting left hand on your calf and raising your right arm over your head at an angle.\n\nReturn to warrior II and then switch your hand placement. Rotate torso towards the front and reach back with your right arm until your right hand is touching left hamstring. Lift left arm up. Hold for three to five breaths.\n\nSets: Hold 3-5 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/revolvedReversewarriorpose.jpg',
    gif: 'img/gifs/revolvedReverseWarrior.gif',
  ),

  ExerciseModel(
    title: 'Headstand Pike Up',
    description:
        'Kneel down and place your head on your yoga mat. Your hands can be cradling your head or in a tripod position.\n\nExtend your legs out straight until you are balanced on your head with your back straight and your toes pointed. Contract your core and slowly lift your toes off the mat until you are in a pike position.\n\nContinue up to a full headstand. Hold for three breaths and then slowly lower your feet back down through pike position until your toes are on the floor.\n\nSets: Hold for 3 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/headstandPikeup.jpg',
    gif: 'img/gifs/headstandPikeUp.gif',
  ),

  ExerciseModel(
    title: 'Three Point Plank',
    description:
        'From a high plank position, slowly lower down until you are hovering two to four inches above the ground, keeping elbows close to sides.\n\nPush back up to plank position. Lift right leg six inches off the ground, straight behind you, and repeat the slow push-up. Hold for three breaths, then push back up to high plank, taking care to keep right leg extended and off the ground through the entire pose.\n\nSets: 3 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/threePointplank.jpg',
    gif: 'img/gifs/threePointPlank.gif',
  ),

  ExerciseModel(
    title: 'Pull-Through Tabletop',
    description:
        'Begin by sitting on the ground, feet planted, knees bent and hands on the ground just behind your hips. Lift your hips until your torso is parallel to the ground, like the top of a table.\n\nUsing your core muscles, lower your hips down and through your hands, careful not to let your bottom touch the ground. Hold for three to five breaths then return to reverse tabletop.\n\nSets:\n3-5 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/pullThroughtabletop.jpg',
    gif: 'img/gifs/pull-ThroughTabletop.gif',
  ),

  ExerciseModel(
    title: 'Tip-Toe Pulse',
    description:
        'Start in a wide legged squat with your toes pointing out and your hands clasped in prayer position at your chest. Raise up as high as you can on your toes.\n\nPulse gently up and down without lowering your heels. Perform 10 to 15 pulses and then return to goddess pose.Sets:10-15 pulses.',
    time: '1 min',
    image: 'img/AllImageData/yoga/tiptoePose.jpg',
    gif: 'img/gifs/tip-ToePulse.gif',
  ),

  ExerciseModel(
    title: 'Airplane Lunge',
    description:
        'Standing firmly on left leg, tilt forward and lift right leg up behind you with arms by your side, as if you were playing "airplane."\n\nBend left knee and lower down as far as you comfortably can into a single-leg squat while still keeping right leg extended. Do five slow squats.\n\nSets: 5 slow squats',
    time: '1 min',
    image: 'img/AllImageData/yoga/aereoplaneLunges.jpg',
    gif: 'img/gifs/airplaneLunge.gif',
  ),

  ExerciseModel(
    title: 'Sugar Cane',
    description:
        'From standing position, lean to right and reach down. As right hand touches the floor, float your left leg up, keeping it in line with your left hip.\n\nRaise left arm. Then reach back for left foot with left hand, grabbing the foot or the shin. Arch back and press foot into hand. Hold the pose for three to five breaths then return to half-moon.\n\nSets: 3-5 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/sugarCane.jpg',
    gif: 'img/gifs/sugarCane.gif',
  ),

  ExerciseModel(
    title: 'Handstand Prep',
    description:
        'From a plank position, lift hips and push them slightly back. Only your hands and feet should be on the mat, in a down dog position.\n\nLift right leg as high as you can. You can stop here, for a three-legged down dog, or add a little more challenge with an advanced yoga pose. Just push off with left leg so both legs are now in the air. Start with small jumps and work up to getting top leg in line with torso, in preparation for a handstand.',
    time: '1 min',
    image: 'img/AllImageData/yoga/handstandPrep.jpg',
    gif: 'img/gifs/handstandPrep.gif',
  ),

  ExerciseModel(
    title: '90-Degree Extension',
    description:
        'Start on your hands and knees. Raise right leg directly behind you until it is level with your hip. Lift left arm until it is even with your shoulder and you are balancing your right hand and left knee.\n\nSlowly move your lifted leg ninety degrees to the right and your lifted arm ninety degrees to the left. Hold for three breaths then return to spinal balance.\n\nSets:3 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/90Degreeextension.jpg',
    gif: 'img/gifs/90-DegreeExtension.gif',
  ),

  ExerciseModel(
    title: 'Elevated Chair',
    description:
        'From a standing position, lower your hips down and back until you are in a squat position. Keep your knees together and abs tight and raise your arms up on either side of your head. Slowly lift up as high as you can on your toes without losing your balance.\n\nLower down two more inches into your squat. Hold for three to five breaths. For even more burn, squat down until your bottom is almost touching your heels and then move back up to parallel, never letting your heels drop.\n\nSets: 3-5 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/elavatedChair.jpg',
    gif: 'img/gifs/elevatedChair.gif',
  ),

  ExerciseModel(
    title: 'Lifted Crescent Lunge',
    description:
        'From a standing position, take a large step forward with right leg. Bend right knee until you are in a deep squat, lowering left knee to the ground and raising your arms up by ears. Gently arch your back, keeping your head in line with arms.\n\nSlowly lift up left leg, straightening it behind you. You should be balancing on right foot and the top of left foot. Hold for three to five breaths before lowering back to the ground. \n\nSets: 3-5 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/liftedCrescentlunge.jpg',
    gif: 'img/gifs/liftedCrescentLunge.gif',
  ),

  ExerciseModel(
    title: 'Eagle Crunch',
    description:
        'From standing position, bend right knee and lift right leg up to waist. Cross right leg over left thigh, squatting down and wrapping your right toes around your left calf if you can. Extend arms to the sides.\n\nCross left arm over your right in front of you, then bend both elbows. Wrap your forearms together until hands touch. From this eagle position, lift elbows slightly, contract your abs and crunch forward. Hold for three to five breaths.\n\nSets: 3-5 breaths.',
    time: '1 min',
    image: 'img/AllImageData/yoga/eagleCrunch.jpg',
    gif: 'img/gifs/eagleCrunch.gif',
  ),

  ExerciseModel(
    title: 'Prayer Lunge',
    description:
        'From a chair squat with your hands in prayer position, twist your torso to the right. Bring your left elbow to the outside of your right knee, keeping your hands even with your heart. Slowly shift your weight into your right leg.\n\nWithout moving your upper body, extend your left leg straight back until you are in a low lunge with a prayer twist. Hold for five breaths. To make this advanced yoga pose even more intense, flow back and forth between the chair and the lunge positions.\n\nSets: 5 breaths',
    time: '1 min',
    image: 'img/AllImageData/yoga/prayerLunge.jpg',
    gif: 'img/gifs/prayerLunge.gif',
  ),

  //advanced ends
  // yoga exercise ends here
];

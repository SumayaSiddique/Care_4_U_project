import 'package:care_4_u_project/Datamodel/WorkoutModels/CircuitModel.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/ProgramModel.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/UniqueExercises/AllData.dart';

List<Program> womenAdvancedPrograms = [
  Program(
    name: "Program 1",
    details: "25-30 minutes exercise",
    circuitModel: [
      CircuitModel(
        name: "Circuit 1",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: "Sumo Squats",
            description:
                "Stand with feet wider than shoulder-width apart, toes turned out at about 45 degrees. Inhale to sit hips back and lower into a squat, clasping hands in front of chest, keeping core engaged and back neutral. Pause at the bottom, when hips are in line with knees or when form starts to break. Exhale to press into heels and outer edge of foot to stand.",
            time: "1 min",
            image: "img/AllImageData/sumoSquats.jpg",
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
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
            title: "Flutter kicks",
            description:
                "Lie on your back, lift your shoulders off the ground, lift your legs up off the floor and drive your lower back into the mat. Swiftly move your feet up and down like you're swimming in air.",
            time: "1 min",
            image: "img/AllImageData/flutterkicks.jpg",
            gif: "https://i.ibb.co/L0Sh29x/flutter-Kicks.gif",
            gifAvailable: true,
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
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '1 min',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
          ),
          ExerciseModel(
            title: "Deadbugs",
            description:
                "Lie face up on your mat with your arms in the air above your torso and your legs in the air with your knees bent at 90-degree angles. Lower opposite arm and leg toward the floor in a slow and controlled fashion. Return to center and then repeat on the other side.	",
            time: "1 min",
            image: "img/AllImageData/deadbugs.jpg",
            gif: "https://i.ibb.co/3SvKxsH/deadbugs.gif",
            gifAvailable: true,
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
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
      CircuitModel(
        name: "Circuit 2",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '20',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/P6vMwcB/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Flutter kicks",
            description:
                "Lie on your back, lift your shoulders off the ground, lift your legs up off the floor and drive your lower back into the mat. Swiftly move your feet up and down like you're swimming in air.",
            time: "1 min",
            image: "img/AllImageData/flutterkicks.jpg",
            gif: "https://i.ibb.co/L0Sh29x/flutter-Kicks.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Sumo Squats",
            description:
                "Stand with feet wider than shoulder-width apart, toes turned out at about 45 degrees. Inhale to sit hips back and lower into a squat, clasping hands in front of chest, keeping core engaged and back neutral. Pause at the bottom, when hips are in line with knees or when form starts to break. Exhale to press into heels and outer edge of foot to stand.",
            time: "1 min",
            image: "img/AllImageData/sumoSquats.jpg",
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '20 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
          ),
          ExerciseModel(
            title: 'push-ups',
            description: '   To perform a traditional pushup:  ' +
                '   1.    Start kneeling on an exercise mat or the floor and bring your feet together behind you.  ' +
                '   2.    Bend forward to position yourself in a high plank, the top of a pushup position, with your palms flat on the mat, hands shoulder-width apart, and with your fingers facing forward or hands turned slightly in. Your shoulders should be positioned over your hands. Your feet should be together behind you and your back should be flat. Keep your abs pulled in.  ' +
                '   3.    Slowly lower your body toward the floor. Maintain a rigid torso and keep your head aligned with your spine. Don’t let your low back sag or your hips hike upward.  ' +
                '   4.    Continue to lower yourself until your chest or chin touch the ground. Your elbows may flare out during the downward movement.  ' +
                '   5.    Press upward with your arms. Continue pressing until your arms are fully extended at your elbows and you’re back in the plank, at the top of the pushup position.  ' +
                '   6.    Repeat the downward movement. Start with 10 pushups, or however many you can do with proper form, and work your way up as you build strength.  ' +
                '    ',
            time: '20',
            image: 'img/AllImageData/pushUp.jpg',
            gif: 'https://i.ibb.co/khnTWk3/pushUps.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
      CircuitModel(
        name: "Circuit 3",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'mountain climber ',
            description: '   1.	Get into a plank position, making sure to distribute your weight evenly between your hands and your toes.  ' +
                '   2.	Check your form—your hands should be about shoulder-width apart, back flat, abs engaged, and head in alignment.  ' +
                '   3.	Pull your right knee into your chest as far as you can.  ' +
                '   4.	Switch legs, pulling one knee out and bringing the other knee in.  ' +
                '   5.	Keep your hips down, run your knees in and out as far and as fast as you can. Alternate inhaling and exhaling with each leg change.  ' +
                '    ',
            time: '25',
            image: 'img/AllImageData/mountainClimber.jpg',
            gif: 'https://i.ibb.co/CwNPzPj/mountain-Climber.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
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
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '20 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
          ),
          ExerciseModel(
            title: "Sumo Squats",
            description:
                "Stand with feet wider than shoulder-width apart, toes turned out at about 45 degrees. Inhale to sit hips back and lower into a squat, clasping hands in front of chest, keeping core engaged and back neutral. Pause at the bottom, when hips are in line with knees or when form starts to break. Exhale to press into heels and outer edge of foot to stand.",
            time: "1 min",
            image: "img/AllImageData/sumoSquats.jpg",
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: "Core Scissor",
            description:
                "Grab a rope and have it out to your side in one hand and rotate it so it’s in line with your jump.  perform one jump, before returning the rope to its starting position and performing it over and over again.",
            time: "1 min",
            image: "img/AllImageData/coreScissor.jpg",
            gif: "coreScissor.gif",
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
          ),
          ExerciseModel(
            title: "Flutter kicks",
            description:
                "Lie on your back, lift your shoulders off the ground, lift your legs up off the floor and drive your lower back into the mat. Swiftly move your feet up and down like you're swimming in air.",
            time: "1 min",
            image: "img/AllImageData/flutterkicks.jpg",
            gif: "https://i.ibb.co/L0Sh29x/flutter-Kicks.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      )
    ],
  ),
  Program(
    name: "Program 2",
    details: "25-30 minutes exercise",
    circuitModel: [
      CircuitModel(
        name: "Circuit 1",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '1 min',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '1 min',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
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
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '1 min',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/P6vMwcB/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
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
            gif: 'https://i.ibb.co/CwNPzPj/mountain-Climber.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '1 min',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
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
            title: "Lateral shuffle",
            description:
                "Keep a tight core and a soft bend in the knee, sit your hips back, and take a light sideways hop to the right. Reach your left hand toward your right foot and touch the ground. Bring yourself back up and hop sideways to the left, reaching your right hand toward your left foot. ",
            time: "1 min",
            image: "img/AllImageData/lateralShuffle.jpg",
            gif: "lateralShuffle.gif",
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
      CircuitModel(
        name: "Circuit 2",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Sumo squat',
            description:
                'Step 1: \n Stand with your feet slightly wider than hip-width apart and turn your feet out, externally rotating your hips.\n Step 2 With your hands clasped together at your chest, push your hips back and squat down, keeping your back straight and your upper body lifted. Make sure you’re pushing through your heels and engaging your inner thighs as you come back to your starting position.',
            time: '1 min',
            image: 'img/AllImageData/sumoSquat.jpg',
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'push-ups',
            description: '   To perform a traditional pushup:  ' +
                '   1.    Start kneeling on an exercise mat or the floor and bring your feet together behind you.  ' +
                '   2.    Bend forward to position yourself in a high plank, the top of a pushup position, with your palms flat on the mat, hands shoulder-width apart, and with your fingers facing forward or hands turned slightly in. Your shoulders should be positioned over your hands. Your feet should be together behind you and your back should be flat. Keep your abs pulled in.  ' +
                '   3.    Slowly lower your body toward the floor. Maintain a rigid torso and keep your head aligned with your spine. Don’t let your low back sag or your hips hike upward.  ' +
                '   4.    Continue to lower yourself until your chest or chin touch the ground. Your elbows may flare out during the downward movement.  ' +
                '   5.    Press upward with your arms. Continue pressing until your arms are fully extended at your elbows and you’re back in the plank, at the top of the pushup position.  ' +
                '   6.    Repeat the downward movement. Start with 10 pushups, or however many you can do with proper form, and work your way up as you build strength.  ' +
                '    ',
            time: '1 min',
            image: 'img/AllImageData/pushUp.jpg',
            gif: 'https://i.ibb.co/khnTWk3/pushUps.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Sumo squat',
            description:
                'Step 1: \n Stand with your feet slightly wider than hip-width apart and turn your feet out, externally rotating your hips.\n Step 2 With your hands clasped together at your chest, push your hips back and squat down, keeping your back straight and your upper body lifted. Make sure you’re pushing through your heels and engaging your inner thighs as you come back to your starting position.',
            time: '1 min',
            image: 'img/AllImageData/sumoSquat.jpg',
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '20 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: "Sit-ups",
            description:
                "Start by lying on your back with your knees bent. Your knees at a 90-degree angle, with your feet flat on the floor. Fingertips on the back of your ears. Lift your torso up as close to your thighs as possible.",
            time: "1 min",
            image: "img/AllImageData/sit-ups.jpg",
            gif: "sit-ups.gif",
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
            gif: "https://i.ibb.co/Wsj5KDm/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
      CircuitModel(
        name: "Circuit 3",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'mountain climber ',
            description: '   1.	Get into a plank position, making sure to distribute your weight evenly between your hands and your toes.  ' +
                '   2.	Check your form—your hands should be about shoulder-width apart, back flat, abs engaged, and head in alignment.  ' +
                '   3.	Pull your right knee into your chest as far as you can.  ' +
                '   4.	Switch legs, pulling one knee out and bringing the other knee in.  ' +
                '   5.	Keep your hips down, run your knees in and out as far and as fast as you can. Alternate inhaling and exhaling with each leg change.  ' +
                '    ',
            time: '25',
            image: 'img/AllImageData/mountainClimber.jpg',
            gif: 'https://i.ibb.co/CwNPzPj/mountain-Climber.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '20 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
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
            gif: "https://i.ibb.co/Wsj5KDm/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: "Core Scissor",
            description:
                "Grab a rope and have it out to your side in one hand and rotate it so it’s in line with your jump.  perform one jump, before returning the rope to its starting position and performing it over and over again.",
            time: "1 min",
            image: "img/AllImageData/coreScissor.jpg",
            gif: "coreScissor.gif",
          ),
          ExerciseModel(
            title: "Sit-ups",
            description:
                "Start by lying on your back with your knees bent. Your knees at a 90-degree angle, with your feet flat on the floor. Fingertips on the back of your ears. Lift your torso up as close to your thighs as possible.",
            time: "15",
            image: "img/AllImageData/sit-ups.jpg",
            gif: "sit-ups.gif",
          ),
          ExerciseModel(
            title: "Flutter kicks",
            description:
                "Lie on your back, lift your shoulders off the ground, lift your legs up off the floor and drive your lower back into the mat. Swiftly move your feet up and down like you're swimming in air.",
            time: "1 min",
            image: "img/AllImageData/flutterkicks.jpg",
            gif: "https://i.ibb.co/L0Sh29x/flutter-Kicks.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
    ],
  ),
  Program(
    name: "Program 3",
    details: "25-30 minutes exercise",
    circuitModel: [
      CircuitModel(
        name: "Circuit 1",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '1 min',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
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
            title: "Sit-ups",
            description:
                "Start by lying on your back with your knees bent. Your knees at a 90-degree angle, with your feet flat on the floor. Fingertips on the back of your ears. Lift your torso up as close to your thighs as possible.",
            time: "15",
            image: "img/AllImageData/sit-ups.jpg",
            gif: "sit-ups.gif",
          ),
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '1 min',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/P6vMwcB/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '1 min',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
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
            gif: 'https://i.ibb.co/CwNPzPj/mountain-Climber.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: "Lateral Lunges",
            description:
                "Step out to the right and shift your body weight over your right leg, squatting to a 90-degree angle at the right/left knee. Try to sit down with your butt, keeping your back as upright as possible.",
            time: "1 min",
            image: "img/AllImageData/lateralLunges.jpg",
            gif: "lateralLunges.gif",
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
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
      CircuitModel(
        name: "Circuit 2",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Sumo Squats",
            description:
                "Stand with feet wider than shoulder-width apart, toes turned out at about 45 degrees. Inhale to sit hips back and lower into a squat, clasping hands in front of chest, keeping core engaged and back neutral. Pause at the bottom, when hips are in line with knees or when form starts to break. Exhale to press into heels and outer edge of foot to stand.",
            time: "1 min",
            image: "img/AllImageData/sumoSquats.jpg",
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'push-ups',
            description: '   To perform a traditional pushup:  ' +
                '   1.    Start kneeling on an exercise mat or the floor and bring your feet together behind you.  ' +
                '   2.    Bend forward to position yourself in a high plank, the top of a pushup position, with your palms flat on the mat, hands shoulder-width apart, and with your fingers facing forward or hands turned slightly in. Your shoulders should be positioned over your hands. Your feet should be together behind you and your back should be flat. Keep your abs pulled in.  ' +
                '   3.    Slowly lower your body toward the floor. Maintain a rigid torso and keep your head aligned with your spine. Don’t let your low back sag or your hips hike upward.  ' +
                '   4.    Continue to lower yourself until your chest or chin touch the ground. Your elbows may flare out during the downward movement.  ' +
                '   5.    Press upward with your arms. Continue pressing until your arms are fully extended at your elbows and you’re back in the plank, at the top of the pushup position.  ' +
                '   6.    Repeat the downward movement. Start with 10 pushups, or however many you can do with proper form, and work your way up as you build strength.  ' +
                '    ',
            time: '1 min',
            image: 'img/AllImageData/pushUp.jpg',
            gif: 'https://i.ibb.co/khnTWk3/pushUps.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Sumo Squats",
            description:
                "Stand with feet wider than shoulder-width apart, toes turned out at about 45 degrees. Inhale to sit hips back and lower into a squat, clasping hands in front of chest, keeping core engaged and back neutral. Pause at the bottom, when hips are in line with knees or when form starts to break. Exhale to press into heels and outer edge of foot to stand.",
            time: "1 min",
            image: "img/AllImageData/sumoSquats.jpg",
            gif: "https://i.ibb.co/6RLxgP5/sumo-Squat.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '20 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: "Sit-ups",
            description:
                "Start by lying on your back with your knees bent. Your knees at a 90-degree angle, with your feet flat on the floor. Fingertips on the back of your ears. Lift your torso up as close to your thighs as possible.",
            time: "1 min",
            image: "img/AllImageData/sit-ups.jpg",
            gif: "sit-ups.gif",
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
            gif: "https://i.ibb.co/Wsj5KDm/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/rest.gif',
          ),
        ],
      ),
      CircuitModel(
        name: "Circuit 3",
        cycle: 4,
        exercises: [
          ExerciseModel(
            title: 'mountain climber ',
            description: '   1.	Get into a plank position, making sure to distribute your weight evenly between your hands and your toes.  ' +
                '   2.	Check your form—your hands should be about shoulder-width apart, back flat, abs engaged, and head in alignment.  ' +
                '   3.	Pull your right knee into your chest as far as you can.  ' +
                '   4.	Switch legs, pulling one knee out and bringing the other knee in.  ' +
                '   5.	Keep your hips down, run your knees in and out as far and as fast as you can. Alternate inhaling and exhaling with each leg change.  ' +
                '    ',
            time: '25',
            image: 'img/AllImageData/mountainClimber.jpg',
            gif: 'https://i.ibb.co/CwNPzPj/mountain-Climber.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping squats ',
            description:
                '1. Stand with feet hip-width distance apart, feet slightly turned out. 2. Perform a normal bodyweight squat, maintaining a tall spine and braced core. ... As soon as your hip sinks just below the knees, push your heels the floor by jumping as high as you can, and land softly on your feet.',
            time: '15',
            image: 'img/AllImageData/jumpingSquats.jpg',
            gif: 'img/gifs/jumpingJacks.gif',
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '20 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/DG6nVZ9/plank.gif',
            gifAvailable: true,
            // gif none
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
            gif: "https://i.ibb.co/Wsj5KDm/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/df3LmfZ/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: "Core Scissor",
            description:
                "Grab a rope and have it out to your side in one hand and rotate it so it’s in line with your jump.  perform one jump, before returning the rope to its starting position and performing it over and over again.",
            time: "1 min",
            image: "img/AllImageData/coreScissor.jpg",
            gif: "coreScissor.gif",
          ),
          ExerciseModel(
            title: "Sit-ups",
            description:
                "Start by lying on your back with your knees bent. Your knees at a 90-degree angle, with your feet flat on the floor. Fingertips on the back of your ears. Lift your torso up as close to your thighs as possible.",
            time: "15",
            image: "img/AllImageData/sit-ups.jpg",
            gif: "sit-ups.gif",
          ),
          ExerciseModel(
            title: 'Squats (double time)',
            description:
                '   Start by holding the kettlebell in the rack position: Grip firmly by the handles and pull fists to chin, keeping elbows pointed straight down. Keeping your arms tucked in close to your body, squat down as low as you can and then stand back up to starting position. Repeat.  ' +
                    '    ',
            time: '1 min',
            image: 'img/AllImageData/squats(doubleTime).jpg',
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Rest',
            description: 'Rest for your next exercise',
            time: '2 min',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
        ],
      ),
    ],
  ),
];

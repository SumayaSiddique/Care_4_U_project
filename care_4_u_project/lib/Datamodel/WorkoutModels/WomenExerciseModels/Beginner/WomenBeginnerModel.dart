import 'package:care_4_u_project/Datamodel/WorkoutModels/CircuitModel.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/ProgramModel.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/UniqueExercises/AllData.dart';

List<Program> womenBeginnerPrograms = [
  Program(
    name: "Program 1",
    details: "15-20 minutes exercise",
    circuitModel: [
      CircuitModel(
        name: "Circuit 1",
        cycle: 3,
        exercises: [
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
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
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
            gif: 'https://i.ibb.co/tQJYrTd/triceps-Dips.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Lunges',
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: '1 min',
            image: 'img/AllImageData/lunges.jpg',
            gif: 'https://i.ibb.co/XjqhY1x/lunges.gif',
            gifAvailable: true,
          ),
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
            gif: 'https://i.ibb.co/87VYG9s/sit-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "High Knees",
            description:
                "Stand with your feet hip-width apart. Lift up your left knee to your chest. Switch to lift your right knee to your chest. Continue the movement, alternating legs and moving at a sprinting or running pace.",
            time: "1 min",
            image: "img/AllImageData/highKnees.jpg",
            gif: "highKnees.gif",
          ),
          ExerciseModel(
            title: 'Burpees ',
            description:
                '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
                    '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
                    '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
                    '    ',
            time: '5',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
      CircuitModel(
        name: "Circuit 2",
        cycle: 3,
        exercises: [
          ExerciseModel(
            title: 'Squats',
            description: '   Here\'s a primer on how exactly to do the perfect squat.  ' +
                '   1.	Stand facing forward with your chest up.  ' +
                '   2.	Place your feet shoulder-width apart or slightly wider. Extend your hands straight out in front of you to help keep your balance. You can also hold your hands at chest level or place them behind your head.  ' +
                '   3.	Bend at your knees and hips, sticking your butt out like you\'re sitting into an imaginary chair. Keep your chest lifted and your spine neutral, and do not let your lower back round.  ' +
                '   4.	Squat down as low as you can, keeping your head and chest lifted. Keep your knees over your ankles and press your weight back into your heels.  ' +
                '   5.	Keep your body tight, and push through your heels to bring yourself back to the starting position. This is one rep.  ' +
                '    ',
            time: '20',
            image: 'img/AllImageData/squats.jpg',
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '15',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/N38JMWm/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '10',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '25',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '10 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/pRQK0Qb/plank.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Burpees ',
            description:
                '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
                    '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
                    '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
                    '    ',
            time: '5',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
      CircuitModel(
        name: "Circuit 3",
        cycle: 3,
        exercises: [
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '15',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/N38JMWm/knee-Push-ups.gif',
            gifAvailable: true,
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
            time: '20',
            image: 'img/AllImageData/squats.jpg',
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Elevated Push-ups",
            description:
                "Place your hands on an elevated surface —such a box or bench— with your hands directly below your shoulders. Your body should form a straight line from your head to your heels. Squeeze your glutes. Maintain these contractions for the duration of the exercise. Lower your body until your chest nearly touches the box of bench then push yourself back to the stating position as quickly as possible.",
            time: "10",
            image: "img/AllImageData/elevatedPush-ups.jpg",
            gif: "elevatedPush-ups.gif",
          ),
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "15",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '10 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/pRQK0Qb/plank.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      )
    ],
  ),
  Program(
    name: "Program 2",
    details: "15-20 minutes exercise",
    circuitModel: [
      CircuitModel(
        name: "Circuit 1",
        cycle: 3,
        exercises: [
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
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Burpees ',
            description:
                '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
                    '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
                    '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
                    '    ',
            time: '5',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
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
            gif: 'https://i.ibb.co/87VYG9s/sit-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "6",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Burpees ',
            description:
                '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
                    '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
                    '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
                    '    ',
            time: '5',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
      CircuitModel(
        name: "Circuit 2",
        cycle: 3,
        exercises: [
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
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '12',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/N38JMWm/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "6",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
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
            gif: 'https://i.ibb.co/QjwgZdz/mountain-Climber.gif',
            gifAvailable: true,
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
      CircuitModel(
        name: "Circuit 3",
        cycle: 3,
        exercises: [
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
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
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '1 min',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/N38JMWm/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Burpees ',
            description:
                '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
                    '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
                    '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
                    '    ',
            time: '5',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "6",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
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
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
    ],
  ),
  Program(
    name: "Program 3",
    details: "15-20 minutes exercise",
    circuitModel: [
      CircuitModel(
        name: "Circuit 1",
        cycle: 3,
        exercises: [
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
            gif: 'https://i.ibb.co/BKZWPQz/squats.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '10',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '10 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/pRQK0Qb/plank.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "10",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '1 min',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Burpees ',
            description:
                '   1.	Start laying flat with your chest on the floor, your legs straight behind you and your hands palms down outside of your shoulders in a press up stance.  ' +
                    '   2.	From there, push yourself up and tuck your feet underneath your body. Immediately jump up and touch your hands over your head.  ' +
                    '   3.	As soon as you land, return to the first position with your chest on the ground and your legs straight. And repeat.  ' +
                    '    ',
            time: '5',
            image: 'img/AllImageData/burpees.jpg',
            gif: 'img/gifs/burpees.gif',
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
      CircuitModel(
        name: "Circuit 2",
        cycle: 3,
        exercises: [
          ExerciseModel(
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '10',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '25',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '15 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/pRQK0Qb/plank.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '12',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/N38JMWm/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '25',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Plank',
            description:
                '1. Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 2. Ground toes into the floor and squeeze glutes to stabilize your body. Your legs should be working, too — be careful not to lock or hyperextend your knees. 3. Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. Your head should be in line with your back. 4. Hold the position for 20 seconds. As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.',
            time: '15 s',
            image: 'img/AllImageData/plank.jpg',
            gif: 'https://i.ibb.co/pRQK0Qb/plank.gif',
            gifAvailable: true,
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
      CircuitModel(
        name: "Circuit 3",
        cycle: 3,
        exercises: [
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "10",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '25',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'knee push-ups',
            description:
                '  Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.  ',
            time: '12',
            image: 'img/AllImageData/kneePush-ups.jpg',
            gif: 'https://i.ibb.co/N38JMWm/knee-Push-ups.gif',
            gifAvailable: true,
          ),
          ExerciseModel(
            title: "Lunges",
            description: '   To correctly do a lunge:  ' +
                '   1.	Start by standing up tall.  ' +
                '   2.	Step forward with one foot until your leg reaches a 90-degree angle. Your rear knee should remain parallel to the ground and your front knee shouldn’t go beyond your toes.  ' +
                '   3.	Lift your front lunging leg to return to the starting position.  ' +
                '   4.	Repeat 10 to 12 reps on one leg, or switch off between legs until you’ve totaled 10 to 12 reps per leg.   ' +
                '    ',
            time: "10",
            image: "img/AllImageData/lunges.jpg",
            gif: "https://i.ibb.co/XjqhY1x/lunges.gif",
            gifAvailable: true,
          ),
          ExerciseModel(
            title: 'Curtsy lunges',
            description:
                'Stand with your feet shoulder-width apart. Step back and across with your right foot so the toes of your right foot make contact with the ground in line with the outside of your left foot. Lower until your front thigh is roughly parallel to the ground, then push back up to your starting position. You can do all your reps on one side before switching, or alternate legs. You can also do a version of the curtsy lunge in which you step back, drop and then aim to hold that position for set time, rather than coming back up and trying to hit a certain number of reps. This will increase the benefits to your stabilising muscles as you work to keep your balance.',
            time: '10',
            image: 'img/AllImageData/curtsyLunges.jpg',
            gif: 'img/gifs/curtsyLunges.gif',
          ),
          ExerciseModel(
            title: 'jumping jacks ',
            description:
                'Stand with your feet together and your hands at your sides. Simultaneously raise your arms above your head and jump up just enough to spread your feet out wide. Without pausing, quickly reverse the movement and repeat.',
            time: '25',
            image: 'img/AllImageData/jumpingJacks.jpg',
            gif: 'https://i.ibb.co/N9V48qP/jumping-Jacks.gif',
            gifAvailable: true,
          ),
          // ExerciseModel(
          //   title: 'Rest',
          //   description: 'Rest for your next exercise',
          //   time: '1 min',
          //   image: 'img/AllImageData/burpees.jpg',
          //   gif: 'img/gifs/burpees.gif',
          // ),
        ],
      ),
    ],
  ),
];

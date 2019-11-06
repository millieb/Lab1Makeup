import 'dart:io';

main() async {
  /*Homework One*/
  var file = File('hw1.txt');
  var content = await file.readAsString();
  var contents = await content.replaceAll(RegExp(r'[a-z,A-Z, ]'), '').trim();


  contents.split('  \n');
  String firstGrade = contents[0];

  var firstGradeNum = int.parse(firstGrade);

  var grades= [];
  var homeworkOneGrade = firstGradeNum*10;
  grades.add(homeworkOneGrade);

  /*Homework Two*/
  var fileTwo = File('hw2.txt');
  var contentTwo = await fileTwo.readAsString();
  var contentsTwo = await contentTwo.replaceAll(RegExp(r'[a-z,A-Z, ]'), '').trim();


  contentsTwo.split('  \n');
  String secondGrade = contentsTwo[0];

  var secondGradeNum = int.parse(secondGrade);

  var homeworkTwoGrade = secondGradeNum*10;
  grades.add(homeworkTwoGrade);

  /*Homework Three*/
  var fileThree = File('hw3.txt');
  var contentThree = await fileThree.readAsString();
  var contentsThree = await contentThree.replaceAll(RegExp(r'[a-z,A-Z, ]'), '').trim();

  contentsThree.split('  \n');
  String thirdGrade = contentsThree[0];

  var thirdGradeNum = int.parse(thirdGrade);

  var homeworkThreeGrade = thirdGradeNum*10;
  grades.add(homeworkThreeGrade);


  /*Prints Total Points for Homework Assignments*/
  int sum = grades[0] + grades[1] + grades[2];
  double totalPoints = (sum / grades.length) * .3;
  print("Total points obtained for Homework Assignments: $totalPoints");



  /*Project One grades*/
  var projectOne = File('project1.txt');
  var projectContent = await projectOne.readAsString();
  var projectContents = await projectContent.replaceAll(RegExp(r'[a-z,A-Z, ]'), '').trim();


  projectContents.split('  \n');
  String projectOneGrade = projectContents[0];

  var projectOneGradeNum = int.parse(projectOneGrade);

  var projectGrades= [];
  var projOneGrade = projectOneGradeNum*10;
  projectGrades.add(projOneGrade);

  /*Project Two grades*/
  var projectTwo = File('project2.txt');
  var projectTwoContent = await projectTwo.readAsString();
  var projectTwoContents = await projectTwoContent.replaceAll(RegExp(r'[a-z,A-Z, ]'), '').trim();


  projectTwoContents.split('  \n');
  String projectTwoGrade = projectTwoContents[0];

  var projectTwoGradeNum = int.parse(projectTwoGrade);

  var projTwoGrade = projectTwoGradeNum*10;
  projectGrades.add(projTwoGrade);

  /*Prints Total Points for Project Assignments*/
  int sumProjects = projectGrades[0] + projectGrades[1];
  double totalProjectPoints = (sumProjects / projectGrades.length) * .3;
  print("Total points obtained for Project Assignments: $totalProjectPoints");


  /*Exam grades*/
  var examFile = File('exam.txt');
  var examContent = await examFile.readAsString();
  var examContents = await examContent.replaceAll(RegExp(r'[a-z,A-Z, ]'), '').trim();


  examContents.split('  \n');
  String examGrade = examContents[0];

  var examGradeNum = int.parse(examGrade);

  var examGrades= [];

  examGrades.add(examGradeNum*10);
  int examFinalGrade = examGradeNum*10;

  /*Prints Total Points for Exam*/
  double totalExamPoints = examFinalGrade * .4;
  print("Total points obtained for Project Assignments: $totalExamPoints");

  /*Adding All Points to get Average Grade*/
  double averageGrade = (totalPoints + totalProjectPoints + totalExamPoints);
  print("The final grade is: $averageGrade");

  /*Determines letter grade*/
  var letterGrade;
  if(averageGrade <= 59){
    letterGrade = "F";}
  if(averageGrade >= 60 && averageGrade <= 69){
    letterGrade = "D";}
  if(averageGrade >= 70 && averageGrade <= 79){
    letterGrade = "C";}
  if(averageGrade>= 80 && averageGrade <= 89){
    letterGrade = "B";}
  if(averageGrade>= 90 && averageGrade <= 100){
    letterGrade = "A";}
  print(letterGrade);


 
  /*Writing grades to text file*/
  var gradesOutput = "name                  grade   w-total   exam(100)   proj1(100)    proj2(100)    hw1(100)    hw2(100)    hw3(100)\nAlvarado, Roberto     $letterGrade        $averageGrade         $examGradeNum         $projOneGrade              $projTwoGrade          $homeworkOneGrade          $homeworkTwoGrade          $homeworkThreeGrade";


  var fileCopy = await File('output.txt').writeAsString(gradesOutput);
  print(await fileCopy.exists());
  print(await fileCopy.length());

}


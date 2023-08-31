<div style="text-align: center;"><strong><h1>Project Report of Group-14</h1></strong><div>



<img width="700" style="text-align: center;" alt="Team Members" src="Image/Photo1.png">

<div style="text-align: center;"><strong>Diagram 1. Members: Jake | Ziyu | Zeyun | Mish | Xueqing</strong></div>



<h2>1. Game demo video: </h2>
<iframe width="4000" height="315" src="https://www.youtube.com/embed/jFWzhxLPpzk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<div style ="text-align: center;"><a href = "https://youtu.be/jFWzhxLPpzk"><h4><strong>Link: </strong><em>https://youtu.be/jFWzhxLPpzk</em></h4></a></div>



## **2. Introduction**

<img width="600" style="text-align: center;" alt="Game Start Page" src="https://user-images.githubusercontent.com/122687985/235812070-3a3b03ad-cc75-4942-ac40-b1bf288b1800.png">

<div style="text-align: center;"><strong>Diagram 2. Game Start Page</strong></div>

This game is similar to the classic game of Donkey Kong. Our decision was based on our desire to build a classic arcade based game that we all enjoyed in the past. 

Similarly to the original, this game involves the user controlling a player using the arrow keys on the keyboard to move the player up a series of platforms using ladders with the aim of rescuing the princess at the top. All the while trying to avoid the barrels which are being thrown by the nemesis, Donkey Kong. The player must avoid or jump over the barrels in order to survive.

We added a couple of novel twists to the game. The first involves the platforms gradually disappearing as the game progresses. Not only does this make the game more challenging for the user, it creates an incentive for them to beat the game as fast as possible, before it becomes extremely difficult. The player and the barrels can fall through the gaps making the game more unpredictable and fun.

The second novel twist includes a fiery ball which moves towards the player like a heat-seeking missile. And likewise with the barrel mechanics, if the player touches the fiery ball, they lose a life.

We wanted to make sure that the game felt nostalgic so we used retro-inspired graphics taken from the original game. Overall, this version of Donkey Kong should offer a fun and challenging gameplay experience for users.


## **3. Requirements**
In this section, we discuss how we developed the requirements of the game, including the use case diagrams, user stories, and the ideation process. We also describe how we evaluated and refined our ideas to ensure the final game meets the needs of the users.

### 3.1 Use case diagrams ###

In our team, we created a use case diagram to help us delineate the functional requirements of our game. Through this process we were able to identify the key use cases and the actors involved in the game and how they interact with each other. The focal actor of the game is the player, who interfaces with the game using the keyboard’s arrow keys. Our principle use case involves moving the character laterally, performing jumps, ascending ladders, and avoiding obstacles such as the barrels and the fiery balls. We also identified two other important actors: Donkey Kong, whose responsibility is to throw barrels down at the player, creating obstacles that the player must avoid, and the princess, who represents the goal of the game. By incorporating the use case diagram, we were able to discovery the key interactions which allowed us to refine and polish the game mechanics to ensure that it is both challenging and enjoyable. 

<img width="800" style="text-align: center;" alt="UML_Use_Case" src="Image/UML_Use_Case.png">

<div style="text-align: center;"><strong>Diagram 3. Use Case Diagrams</strong></div>

### 3.2 User stories ###

User stories were a critical tool in our development process, enabling us to refine the requirements of the game from the perspective of the user. This process ensured our game was developed with the user's needs and desires as the central focus, moving beyond just the technical requirements. To create the user stories, we started by brainstorming a list of potential features and gameplay mechanics that we wanted to include in the game. These were then used as a basis for our user stories

For example, one user story we created was “As a player, I want to be able to jump over barrels so that I can avoid being hit and can progress up the levels.”

This use story captures the key requirement of the game that the player must be able to avoid obstacles (barrels) thrown by Donkey Kong. 

Here as some of the other user stories we created:
- “As a player, I want the game to get progressively more difficult, so that I am incentivised to complete the game faster”
- “As a player, I want to be able to record my scores and keep track of my highest score, so that I have an incentive to replay the game and improve my score”
- “As a player, I want to be able to control the character using the arrow keys so that I can navigate through the game”
- “As a player, I want the collision sot be detected between the player, platforms, ladders, and barrels, so that the game runs as expected”

### 3.3 Early stages design ###

In the early stages of the decision process. We began by recalling our memories of the original game and doing some research. We looked at the game mechanics, graphics, and the overall feel of the game to get a sense of its core features. We then brainstormed ideas for new features that we could add to make it more unique, interesting, and engaging.

One of the favourable ideas that emerged from our brainstorming sessions was the gradual decrease of the platform size over time. We felt that this would increase the difficulty and provide players with a greater sense of accomplishment when they completed the game. We also decided to add the fiery ball element to make it more exciting. We tested the ideas with a small group of our peers who encouraged our ideas.

As we continued to refine our ideas, we created mock-upds of the game graphics and mechanics. We chose retro-inspired graphics and designed the characters to be visually distinct and easy to identify.

Overall, our design process involved a lot of iteration and refinement. We started with a basic idea and added new features as we went along, testing and evaluating each one to see if it improved the game. By the end of the process, we had a clear vision for what we wanted our game to be and were confident in its potential to engage and entertain players.

### 3.4 Ideation process ###

<img width="700" style="text-align: center;" alt="Team Working And Brainstorm" src="https://user-images.githubusercontent.com/122687985/235811017-15dfee54-f959-4f3d-9458-75fdc148ed17.jpeg">

<div style="text-align: center;"><strong>Diagram 4. Our Team Working And Brainstorm</strong></div>

Our ideation process involved brainstorming sessions and team meetings, where we considered different options and evaluated them against our requirements. We also gathered feedback from potential users. Our main challenge was to come up with new features that would make the game interesting without deviating too much from the original concept.  

## **4. Design**
In this section, we provide an overview of the system architecture for our game as well as the Unified Modelling Language (UML) diagrams that we used to help visualise it. These tools and techniques helped to provide a clear and comprehensive understanding of the game’s design which was essential when it came to the implementation and development of the game. Due to the iterative nature of the implementation process, the UML diagrams were used as rough guides rather than being concrete plans for us to follow.

### 4.1 Class diagram ###

In the design process for our game, we created a class diagram to serve as a guide for implementation. The class diagram illustrates a clear and comprehensive overview of the game’s architecture and functionality, and reflects the relationship between classes including inheritance and association. It consists of several classes, each with specific attributes and methods that define their behaviour in the game. The classes include the player, princess, Donkey Kong, barrel, and fiery ball, which all inherit from the sprite class, as well as the ladder and platform classes.

<img width="700" style="text-align: center;" alt="UML_Class_Diagram" src="Image/UML_Class_Diagram1.png">

<div style="text-align: center;"><strong>Diagram 5. Class Diagram Design</strong></div>

In terms of functionality, the class diagram showcases how each object interacts with one another. For example, the barrel object is associated with donkey kong and can collide with the player object, causing the player to lose a life. The player and the princess objects are connected by the game’s objective, which is for the player to rescue the princess. This is illustrated by an associated relationship. The player is also associated with the platform, ladder, and the fiery ball objects as the player object interacts with all of these. In creating the class diagram, we applied various designs and principles such as the single responsibility principle and the factory method pattern to ensure our implementation is modular and maintainable. 

### 4.2 Communication diagram ###

The communication diagram for our game shows a visual representation of the interactions between the classes and objects in the game. It includes the player, platform, barrel, fiery ball, ladder, and princess classes. Each object is represented by a box, and the messages between them are represented by arrows. 

<img width="600" style="text-align: center;" alt="Comm_Diagram" src="Image/UML_Comm_Diagram.png">

<div style="text-align: center;"><strong>Diagram 6. Communication Diagram Design</strong></div>

The diagram shows that the player class is able to handle input from the keyboard to move the player character. The player class then sends messages to the platform to check for collisions and move the character up and down the ladders if necessary. Additionally, the barrel and the fiery ball classes send messages to the player class to check for a collision, and they send messages to the platform to adjust their movement accordingly. The princess class is also included in the diagram, as the player class interacts with the princess when the character reaches the top of the level. Once the player reaches the princess, the game is won. The communication diagram was a very useful tool in helping us to design and implement the game. It helped us to identify the interactions between classes and objects and to ensure that the game mechanics were well defined. We used the diagram as a rough blueprint when implementing the game.

### 4.3 Sequence diagram ###

<img width="600" style="text-align: center;" alt="Comm_Diagram" src="Image/UML_Seq_Diagram.png">

<div style="text-align: center;"><strong>Diagram 7. Sequence Diagram Design</strong></div>

The sequence diagram shows the messages sent between the player, ladder, platform, barrel, and princess classes. It demonstrates how the player class moves along the platform and interacts with the obstacles and the princess class, which ends the game when the player reaches. It also shows how the player must avoid the barrels in order to prevent the game from ending.

## **5. Implementation**
Creating a list of features required for the game was easy, however implementing all the mechanics required was much more challenging from a programming perspective. Beyond this, an even greater challenge was making sure that the implementation of these features created an enjoyable gameplay experience. The team quickly realised that prioritising fun gameplay was far more important than just fulfilling a bullet point list of features for the game. As such, we adopted an approach of playing the game as much as possible between development rather than going through long periods of development without seeing the game in action. During this process, we paid particular attention to our four main development challenges and ensured that we implemented these mechanics into the game in a way that felt naturally challenging and intuitive rather than forced. This section will primarily focus on our three design challenges and the process of development the team went through to implement these mechanics.

### 5.1 Disappearing Platforms

<img width="300"  style="text-align: center;" alt="Platform" src="https://user-images.githubusercontent.com/122687985/235811391-aef265a8-e5d3-41bd-9046-6b07d7776c48.png">

<div style="text-align: center;"><strong>Diagram 8. Randomly Disappearing Platforms in Game</strong></div>

The primary twist of our game which separates it from the traditional game of Donkey Kong is the mechanic which allows platforms to dynamically and randomly disappear as the game progresses. Immediately after implementing this mechanic, it was discovered that it was too chaotic to play as all platforms would quickly disappear, making it impossible for the player to properly traverse the game. The code had to be modified such that a platform may only disappear if an adjacent platform has not already disappeared, removing the ticking timebomb element of the game. The team found that the randomly disappearing platforms didn’t necessarily create a fair or balanced experience however the unpredictable nature of the game was an enjoyable experience and thus the order in which the platforms disappear was kept completely random. It was however, found that making the platforms sloped was difficult to implement and only led to a frustrating experience when platforms disappeared and as such the decision to design the platforms completely horizontally was made. Later in development, the decision to restrict the disappearing platforms and enemy fire to the higher difficulty level was made in order to allow players on the lower difficulty level have a more vanilla Donkey Kong gameplay experience.

### 5.2 Satisfying Physics

The creation of in game physics was another major development hurdle that the team faced and something which needed to be implemented carefully in order to ensure a fun and smooth gameplay experience. Unfortunately, by default Processing can only detect one keypressed() and keyreleased() function at a time, thus leading to unsmooth player movement as every jump would completely interrupt and slow down player movement. To get passed this issue, variables were created to store the state of each key press and eventually, along with the implementation of ladders, a system was created by which the player was able to move, jump and climb all at the same time with smooth transitions between each one. The player class was written in a highly customisable way, with attributes controlling gravity, player speed, jump speed and jump height that could all be easily modified and played around with. By experimenting with these attributes, we quickly were able to find a balance on what felt satisfying, not just for smooth controls, but also for fair gameplay so that the player intuitively understands how and when to jump to avoid incoming barrels.

### 5.3 Game Difficulty

<img width="600"  style="text-align: center;" alt="Settings of Difficulty" src="https://user-images.githubusercontent.com/122687985/235812752-e4ff3e0d-c3d5-4108-90cb-ce44764cbb40.png">

<div style="text-align: center;"><strong>Diagram 9. Settings of Difficulty</strong></div>

This leads into the final game challenge which was ensuring that the game difficulty felt balanced and fun, arguably the most essential aspect of any video game. As previously mentioned, the main way in which this would be achieved was through tweaking player physics and experimenting with different speeds and jump heights to find the sweet spot for avoiding barrels skilfully whilst not entirely trivialising them. 
Due to the nature of the game, a one size fits all approach to difficulty was not entirely suitable as the skill gap between different players demonstrated that there was a wide margin of gameplay experiences that could be had. Thus the decision to have different difficulty levels with different gameplay elements was decided upon. The incoming barrels, along with the enemy fire and the disappearing platforms created a game which featured many dangers for the player. This challenge was welcome and perhaps refreshing to more experienced players who were familiar with the controls and the concept of Donkey Kong. However the decision to turn off the fire and the disappearing platforms in the lower difficulty setting was made to ensure that the game still retained appeal amongst those less experienced and familiar with the game. 

### 5.4 Game State Machine

<img width="520"  style="text-align: center;" alt="State Machine" src="https://user-images.githubusercontent.com/122687985/235811723-b694bda6-84f2-405d-8fa2-185cec1b228e.png">

<div style="text-align: center;"><strong>Diagram 10. Part Code of Game State Machine</strong></div>

As a 2D action platformer game, the setup and management of the state machine are crucial, which is also reflected in our code. Firstly, in terms of game mechanics, we need to detect player actions based on their current state and provide corresponding results, such as setting an invincible state after being hit to increase the game's playability. Enemy props (such as barrels) and NPC enemies (such as fire) also need to operate based on their positional state, contact state with the player, and timers we set for easier management to achieve the desired game mechanics. For example, setting a slight delay in the fire's tracking of the player to increase the game's playability.

Secondly, we set different UI states in the game to enhance the user interface's fluidity, readability, and usability. We use different interface state setups in Processing to better develop code for different interface operations and states.

All of these state setups require our team to have a comprehensive overall plan and understanding of the game mechanics, interface, and code implementation before the development phase. It also plays a decisive role in the final implementation effect of our game program. Therefore, it is a highly challenging task.

## **6. Evaluation**

<img width="600"  style="text-align: center;" alt="Evaluation" src="https://user-images.githubusercontent.com/122687985/236048000-a1b70ffc-795f-4035-ae5c-37bde68e44d5.png">

<div style="text-align: center;"><strong>Diagram 11. Evaluating Game</strong></div>

Our group has taken a thoughtful approach to evaluating our game project by using different methods at different stages of development. By using heuristic evaluation once the prototype was completed, we were able to identify potential usability issues early on and make improvements to the game design. This type of evaluation involves having other team members examine the game interface and interactions based on a set of predetermined heuristics or principles, such as ease of use, learnability, and consistency.

After making improvements to the game, our group used the NASA TLX questionnaire to evaluate the final version. This is a tool that measures the perceived workload or mental demand placed on a user when completing a task. By using this questionnaire, we were able to gain insight into how easy or difficult it was for users to play our game, and identify areas where we might want to make further adjustments.

For our code testing, our group used both black box and white box testing methods. Black box testing involves testing the software without any knowledge of the internal workings of the code, while white box testing involves testing the software with knowledge of the internal workings of the code. By using both methods, we were able to ensure that the game was functioning as intended from both a user perspective and a technical perspective. This comprehensive approach to testing can help to identify and address any issues or bugs in the code before release.

### 6.1 Heuristic evaluation
For our game prototype we chose to carry out a heuristic evaluation, a method chosen for its relative speed and accuracy. Through this method, we hope to be able to identify the shortcomings of our prototype, reflect on them and come up with a solution for improvement.
The following is our heuristic evaluation form:

<img width="600"  style="text-align: center;" alt="Evaluation" src="Image/HE.png">

<div style="text-align: center;"><strong>Diagram 12. Result of Heuristic Evaluation Table</strong></div>

After the heuristic evaluation of our prototype, the feedback from the evaluations was tallied and summarised to produce the table above. In the table above, it is clear that the main issues with the game are based on the lack of clarity in the UI, and that the visibility of the platform and the position of the ladder are two issues that score high, meaning that they have a greater impact on the game and need to be addressed as soon as possible. This is also due to the fact that the prototype was not designed with a detailed UI, but only to ensure that the basic framework of the game was operational. Therefore, during the subsequent enhancements to the prototype, we focused on the UI design so that the user could better understand the mechanics of our game, and that all parts of the game could be easily understood and played more quickly. Therefore, we replaced simple graphics with images to represent the characters as well as barrels and ladders to make these items match real life. We have also rated the difficulty of the game to ensure that it is appropriate for different players.

### 6.2 NASA TLX Scoring
After an initial evaluation of the prototype using heuristic evaluation, we refined our prototype and administered the NASA TLX questionnaire to our final game. The reason for choosing this method of evaluating our finished game was that the questionnaire provided a large amount of data at a small cost, and it was also a good way of capturing people's subjective feelings when playing our game, helping us to think about whether there was room for improvement. Here are the scores from our questionnaire:

<img width="500"  style="text-align: center;" alt="Evaluation" src="Image/NASA%20TLX1.png">

<div style="text-align: center;"><strong>Diagram 13. Result of NASA TLX Scoring Table - difficulty level 1</strong></div>

<img width="500"  style="text-align: center;" alt="Evaluation" src="Image/NASA%20TLX2.png">

<div style="text-align: center;"><strong>Diagram 14. Result of NASA TLX Scoring Table - difficulty level 2</strong></div>

<img width="500"  style="text-align: center;" alt="Evaluation" src="Image/NASA%20TLX3.png">

<div style="text-align: center;"><strong>Diagram 15. Result of NASA TLX Scoring Table - difficulty level  3</strong></div>

The NASA TLX questionnaire was used to evaluate each of the 3 different difficulties of our finished game to determine if there was a significant difference in difficulty between each of the 3 difficulties. The raw TLX score was used in this evaluation because it was easier to calculate and there was no significant sensitivity difference between this method and the weighted TLX scores. The final scores of the 10 questionnaires were calculated to determine the subjective needs that people felt when playing our game. The table shows that the subjective demand for difficulty 1 is less than the subjective demand for difficulty 2 and less than the subjective demand for difficulty 3, which is in line with our difficulty setting. It can also be seen that difficulty 3 is more difficult for difficulty 2 than difficulty 2 is for difficulty 1, requiring more effort from the player to play.
We also used the Wilcoxon Signed Rank Test to process the data from our 3 tables in order to determine more accurately whether the differences between the 3 difficulties are significant. 
The results of processing the data for Difficulty 1 and Difficulty 2 are as follows:

<img width="300"  style="text-align: center;" alt="Evaluation" src="Image/Wilcoxon%20Signed%20Rank%20Test1.png">

<div style="text-align: center;"><strong>Diagram 16. Result of Difference Between difficulty level 1 and 2</strong></div>

The results of processing the data for Difficulty 2 and Difficulty 3 are as follows:

<img width="300"  style="text-align: center;" alt="Evaluation" src="Image/Wilcoxon%20Signed%20Rank%20Test2.png">

<div style="text-align: center;"><strong>Diagram 17. Result of Difference Between difficulty level 2 and 3</strong></div>

<img width="300"  style="text-align: center;" alt="Evaluation" src="Image/Wilcoxon%20Signed%20Rank%20Test.png">

<div style="text-align: center;"><strong>Diagram 18. Result of Alpha Value</strong></div>

By comparing the resulting W test statistic with the data in the table, it can be seen that the difference between our different difficulties is noticeable for 99.995% of the population. Therefore, for the vast majority of players, the difficulty rating of this game allows them to choose whether or not to accept the challenge, or to have a relatively easy tour.

### 6.3 How code was tested
In writing the code for this game, we used both white-box and black-box testing. Our white box testing tested the output of each part of the code with the goal of achieving 100% Statement Coverage by splitting the code into modules and testing each module separately to see if the code met the intended design and functionality. The methods used include, but are not limited to, outputting the results of each step within the code to check that they meet expectations.
Black-box testing was also carried out on the final game as a whole to test whether the game's inputs matched the outputs. By using the Equivalence Partitioning (EP) Method, the game's input is divided into different parts and played with the corresponding input to confirm that the final game result meets the game criteria. The following is the Combination we obtained using the Equivalence Partitioning (EP) Method:

<img width="500"  style="text-align: center;" alt="Evaluation" src="Image/EP.png">

<div style="text-align: center;"><strong>Diagram 19. Equivalence Partitioning (EP) Method Table</strong></div>

The success of black box testing of a game is determined by combining different input conditions and testing whether the resulting result meets our expectations for the game.

### 6.4 Evaluation overall
During our evaluation, a heuristic evaluation was chosen to evaluate the game prototype because it was a quick and effective way to identify shortcomings and come up with solutions for improvement. The main issues identified during the evaluation were the lack of clarity in the UI, visibility of the platform, and the position of the ladder, which scored high and had a greater impact on the game. These issues were addressed by focusing on the UI design and replacing simple graphics with images to represent the characters as well as barrels and ladders to make these items match real life, which aim was to make all parts of the game easily understood and played more quickly.

For our code test part, the combination of white-box and black-box testing allowed us to ensure that our code is functional, reliable, and meets the intended design and functionality of the game. By rigorously testing the code using various methods, we have confidence in the quality of the final product.

## **7. Process**

<img width="700"  style="text-align: center;" alt="Evaluation" src="https://user-images.githubusercontent.com/122687985/235813162-a074c4ca-af81-4401-bf62-0d2a534ab5de.png">

<div style="text-align: center;"><strong>Diagram 20. Process of Designing Game NPC</strong></div>

Our team consisted of five members, each of whom brought a unique set of skills to the project. The goal of our project was to learn how to collaborate as a team to create an existing game, but with a novel twist to make it more challenging and interesting. To accomplish this goal, our team met twice a week to discuss our progress and plan the next steps. In the initial stages of the development process, we took the time to learn about each other's backgrounds, interests, and strengths. This set a good foundation for us to work on and helped us decide how to delegate roles. 

To ensure our success, we established a number of methods and utilised several tools throughout the process. To facilitate communication and collaborate, we used a combination of tools such as WhatsApp, Zoom, and Google Docs. WhatsApp was our primary mode of communication, which allowed us to easily stay in touch with one another and discuss any issues that arose during the development process. We utilised Git as a version control system to keep track of our progress and to make necessary modifications and to add features to the game. We also utilised the Kanban board on Github to organise and delegate our work load appropriately. This helped us to stay on track with the project and kept our list of requirements well organised. Google Docs was used for collaborative editing and sharing of documents related to writing the report. One of the biggest challenges we faced was coordinating our schedules and making sure that everyone was able to attend meetings. To help overcome this challenge, we used Google Calendar to schedule meetings as this allowed us to create events and invite attendees. 

Our team had clearly defined roles from the outset of the project which were based was on our strengths and personal interests. In terms of the design and architecture, we all contributed our ideas and this allowed us to split the project into different classes which we could then delegate to each person. We all have similar technical experience so we decided to split the coding responsibilities evenly amongst us, with each person focusing on a specific class to implement. We then worked together to integrate the different parts together in our first game jam. One of our members has more experience making graphical interfaces so this person focused on the UI and graphics, whilst our most experienced coder focused on the more complex implementation. Throughout the process we supported each other with ideas and helped with fixing bugs when we were stuck. 

We did face some challenges during the development process. For example, we had some disagreements about what the novel twist of our game should be. To solve this, we had a team meeting to brainstorm ideas and created a list of pros and cons for each approach, and eventually we were able to come to a consensus on the best approach. Additionally, while we managed to complete the project successfully, we would have benefited from more efficient time management. Specifically, we should’ve prioritised our project and allocated more time to work on it when our other commitments were less demanding. This would have allowed us to focus more intensely on the game development process and achieve a smoother and less stressful workflow. 

## **8. Conclusion**
The overall aim of this project was to recreate a classic game, Donkey Kong, whilst adding some less familiar elements that would add more challenge into the classic game. The lower difficulty settings of this project ended up retaining the basic gameplay of the original game without changing much. The higher difficulties have added new elements and features to attract the interest of modern gamers.
What the team succeeded at: 

1.	The team took a collaborative approach to writing the code. Pair programming was common, and this made debugging much easier as we were able to review each other’s code. We also used online meetings and offline group discussions to communicate and ensure that everyone was clear about their role in the project.

2.	We had a good approach to testing the game as we were writing the code. We still designed the Communication diagram, class diagram, and Sequence diagram before proceeding with development proper.  However, we also made sure that testing the game as we played it was the most important thing, rather than implementing too many untested features. This approach worked well and kept development relatively smooth because our understanding of the user needs, operating logic and technical principles were clear throughout.

### 8.1 Improvements for the team:

1.	Amongst the team, the use of GitHub to bring our work together was quite shoddy. As a result, there were often conflicts between different classes. In one case, we had to go back to an older copy of the main branch due to some merging issues. We could do with some better practice with the software tools designed to help us work collaboratively and record version history.

2.	Code writing habits still need to be improved. A lot of the code lacks explicit comments, which reduces the readability of the code, especially when written by someone else. In the future, the efficiency of the team could be improved by standardising the way we write code and generously inserting comments.

3.	The integration between the classes that each person was responsible for was often very problematic. The amount of time we spent assembling the different classes just so the game could run without conflicts was significant. We realized that we should not only pay attention to the function of the classes we were responsible for, but also provide appropriate interfaces for each other people to make the integration of classes easier.

4.	Our understanding of the underlying code logic was somewhat poor. And this needs to be worked on to truly apply the "object-oriented" thinking to project design. In the early stage of the project, we wrote some methods to realize the basic functions of the project, but these were later quite difficult to change, and this increased the optimization cost of the project.

### 8.2 Outlook on the project:

Games are an art form with interaction as the core means of expression. This feature makes the application of object-oriented thinking in the game industry of great significance. Today, although the mainstream gameplay of the Donkey Kong game has been explored and finalized, game designers can still innovate by experimenting with adding new elements on top of the pre-existing classic gameplay. This novelty can make the game more fun whilst retaining the classic gameplay and thus allow the game to endure for longer.


## **9. Individual contribution**
Provide a table of everyone's contribution, which may be used to weight individual grades. We expect that the contribution will be split evenly across team-members in most cases. Let us know as soon as possible if there are any issues with teamwork as soon as they are apparent.

| Name | Contribution |
| --- | --- |
| **Jake Kumra** | I participated in and facilitated team discussions, I also implemented the platform mechanics including the disappearing platform challenge, as well as parts of the user interface. I also had a prominent role in writing the report including the introduction, requirements, design, and process sections. I also recorded the video demo for the project. |
| **Ziyu** | Participated in discussions. Completed all game interface designs and code implementations, achieved dynamic and musical effects, and tried to ensure a unified artistic style by drawing parts of elements myself. Displayed and implemented the scoring module and game settings adjustment module. Designed and implemented the Fire enemy NPC in the game. Set up and implement all the user interface state machine and collaborated to implement game operation state machine. Contributed to writing like parts of the challenges, parts of the evaluations... |
| **Zeyun Zhao** | Participated in team discussions, completed the creation and application of the barrels section, fixed some bugs in player running like player.isonladder, provided ideas for checking if the player is on the platform, completed the implementation of the player character image, collaborated to implement game operation state machine and assemble the game classes, and completed the evaluation section of the report. |
| **Mish Al-Roubaie** | Suggested the initial Donkey Kong idea for the game's inspiration during a team discussion. Worked primarily on the player class, ensuring that in game physics were working appropriately and the game controls were responsive and satisfying. Integrated the abilities for the player to move, jump and climb. |
|**Liu Xueqing** | In the team discussion, I clarified the categories and some attributes and methods required to implement the game. Created the ladder classes, and ensured its coordination with player and platform classes. Summarized the game design process and completed the conclusion section in the report.|


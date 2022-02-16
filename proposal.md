# Homebrew GUI
### Team: Vishal Aiely, Braxton Haynie, Colter Swanson
---

## Introduction
This project is going to be intuitive easy to use GUI for the MacOS and Linux package manager Homebrew. The idea is to make a easy to use interface that also looks appealing to the users. The motivation for the project is to help make using homebrew easier and arguably less daunting for new user. It would also be nice to help the user visualize what packages have been downloaded by Homebrew. Another feature that would be useful to have is the ability to search packages based on their functionality not just their name.

There is a GUI that has been created for Homebrew already, so this idea is not entirely original. However, the other GUI that is available does not allow for descriptive package search. Another big difference will be how the application will be developed. Our team will be using dart and flutter to develop the application, and the other GUI was developed using Objective-C and xCode. Another key feature that we hope to add is the ability for our Homebrew GUI to be compatable with both MacOX and Linux.

## Customer Value - COLTER 
- Customer Need
    ‒ Who is the primary customer?
    ‒ What does the customer want?
    ‒ Why? What is their underlying problem to solve or experience to have? ‒ Place your software in the context of the market.
- Proposed Solution
    ‒ From the customer’s POV, what will your solution deliver?
    ‒ How will the customer benefit from your proposed solution?
    ‒ Does it provide a new capability or is it much better, easier, faster ...? ‒ Have you tested the idea on anyone?
- Measures of Success
    ‒ How will you know if customers got the benefits you want to provide? ‒ What are your customer-centric measures of success?

## Proposed Solution & Technology - BRAXTON
-System: technology you deliver
    ‒ From the developer’s POV, what will your software do?
    ‒ What are the main components of your system? What do they do?
    ‒ What is a high-level block diagram of the architecture of the system?
    ‒ What is a minimal system that would have some value to the customer? ‒ What are some possible enhancements that customers would value?
    ‒ How will you test your system?
- Tools: technology you use to build what you deliver ‒ What will you use to build the system?
    ‒ Are there available tools you can leverage?

## Team - COLTER
- Skills
    ‒ Has anyone on the team built something like this before? ‒ Are the tools known or new to the team?
    Designing a user interface is not new to the team members of this team. All of us have some experience designing and implementing 
    UI's. However, our experience is mainly with pyQT and other UI development tools. This will be the first time each of us is using 
    Flutter and thus will be expecting a learning curve while developing the UI. 
- Roles
    ‒ What are the roles of the team members? ‒ Will the roles be fixed or rotating?
    The roles for our team will include a project manager and two frontend developers. The role of project manager will go to Braxton Haynie as 
    he was the one that formed the project and has led the initial deign process. He will be tasked with keeping the project on track and 
    managing the overall flow of the project. Since this project is a frontend project, there will be two frontend developers, Vishal Aiely and Colter
    Swanson. They will be responsible for the layout of the user interface and how well it will communicate its features to the customer. The role of
    tester will also be assigned. It will be assined as a rotating role among the three people on this project. The other roles assigned are fixed unless 
    conflict arises later on in the project and change is needed. 

## Project Management - VISHAL
- Schedule
    ‒ Is completion of the system feasible?
    ‒ When and how often will you meet? Face to face?
    ‒ Write a (tentative) week-by-week schedule for project tasks and deadlines
    
    The schedule consists of first identifying the problem we want to solve by building our tool, and then by figuring out whether our idea solves the problem.We will accomplish these first stages by creating some inital design mock-ups and technical architectures to showcase the functionality of the system.Then we will present these designs to potential users in order to get feedback which will help us understand to which extent our solution sovles the root problem.This entire process will be completed within the begin weeks of the project (2/13-3/6).Afterwards, we will refine our problem and solution definition to better suit the feedback given by our inital user.We will begin to develop a backend that allows us to download and search through existing packages within the homebrew ecosystem.As we are devloping out inital backend, we will be finializing a mid-fidelity design mock-up that will be slightly more representative of the final look of the project.These stages will be completed in the weeks of 3/7-3/20. Then the final stage of the product will be modifying the user interface to match the new design and connecting it to the backend, these portions should be completed from 3/21-4/10.

The system, as we see now, is definitely feasibile from a technical and design standpoint.

To ensure proper progress is being made towards a final solution, we will meet weekly over Discord.

The tentative week-by-week schedule for the past and near future weeks are listed in the table below:
    
    | Week | Tasks                                                                          |
    |------|--------------------------------------------------------------------------------|
    | 2/13 | Finish Proposal, Begin UI Design                                               |
    | 2/20 | Gather user research for customer needs                                        |
    | 2/27 | Begin initial UI component development & connection to view available packages |
    | ...  | ...                                                                            |
 
- Constraints
    ‒ Are there any regulatory, or legal constraints? ‒ Are there any ethical or social concerns?
- Resources
    ‒ Will you have access to the data you need?
- Descoping
    ‒ What will happen if the full functionality can not be implemented
    - Will the reduced functionality operate?
    - Will it be useful (at least partially solving the problem)?

## Process Selection

The process that was selected for the development of the Homebrew GUI tool is the iterative process. The iterative code development process is an agile-like process in which each iteration is a week or two with a design-build-test cycle approach. These short iterations allow for customer feedback to be readily applied to the next iteration. For our project, feedback will come from other computer science majors to better understand what should be done in the next iteration. The iterative design process also allows for testing at the end of each iteration, unlike the waterfall method. The waterfall method tests only towards the end of the project. The issue with testing being performed this late is that it makes it highly likely that bugs will be missed. This is not an ideal situation for any project; however, it is especially not ideal for the project in this class due to a fairly strict deadline. If bugs are left to the end of the course, the project could be in jeopardy of not being completed at all. 

Another development process that was considered was the V process which uses a level approach to design and testing. The appeal of this process was the two fold approach of designing and testing the project on the fly. However, the big disadvantage of this approach is that it is eerily similar to the waterfall approach with how it can be difficult to adapt to requirements changes. This difficulty of not being able to easily adapt the project to requirement changes and the issues with late testing is why the team settled on using the iterative process of development because of its safeguards from these issues.

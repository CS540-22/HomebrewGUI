# Homebrew GUI
### Team: Vishal Aiely, Braxton Haynie, Colter Swanson
---

## Introduction
This project is going to be intuitive easy to use GUI for the MacOS and Linux package manager Homebrew. The idea is to make a easy to use interface that also looks appealing to the users. The motivation for the project is to help make using homebrew easier and arguably less daunting for new user. It would also be nice to help the user visualize what packages have been downloaded by Homebrew. Another feature that would be useful to have is the ability to search packages based on their functionality not just their name.

There is a GUI that has been created for Homebrew already, so this idea is not entirely original. However, the other GUI that is available does not allow for descriptive package search. Another big difference will be how the application will be developed. Our team will be using dart and flutter to develop the application, and the other GUI was developed using Objective-C and xCode. A key feature that we hope to add is the ability for our Homebrew GUI to be compatable with both MacOX and Linux.

## Customer Value - COLTER 
- Customer Need
    ‒ Who is the primary customer?
    ‒ What does the customer want?
    ‒ Why? What is their underlying problem to solve or experience to have? ‒ Place your software in the context of the market.
    
    The primary customer for our Homebrew GUI are other software developers looking to find an easy way to manage their packages. The main want that our GUI will be addressing is the desire to have an easy to use functional interface that will allow developers to devote less time and effort to their package management. Providing users with an interface to help with package management will allow them to easily view the packages they have installed and a list of packages that can be installed. By providing this for the developer, they will be able to focus more on their code development and less on learning the nuances behind package management. 
    
- Proposed Solution
    ‒ From the customer’s POV, what will your solution deliver?
    ‒ How will the customer benefit from your proposed solution?
    ‒ Does it provide a new capability or is it much better, easier, faster ...? ‒ Have you tested the idea on anyone?
    
    In the eyes of our customers, our product will deliver an easy to use, visually appealing interface that will allow for ease of access to packages already installed and ones that could be installed. The main benefit from this product will be the time that will be saved getting used to using Homebrew in the command line. Instead, the interface will be clear enough and easy enough to use that the customer will be able to spend more time on their actual project and less time on the setup of their project. The product that we will be developing will provide a new search feature to homebrew that is currently not available and will make Homebrew faster, easier, and more navigable for new users. Our idea currently has not been tested on any individuals yet, however, we have had some peers show interest in our product. Once we have an initial build of the GUI we plan to test it using these individuals and some of our other peers. 
    
- Measures of Success
    ‒ How will you know if customers got the benefits you want to provide? ‒ What are your customer-centric measures of success?
    
    Since our product will not deliver many different services to the user and instead focus on usability, we hope to gather feedback through a rating system on the users experience using the interface. This will allow us to measure our success by viewing user feedback and their ratings to better improve our product. We will focus on the customers' views on the usability of the product and how much time our product saved them. 

## Proposed Solution & Technology
-System: technology you deliver
    ‒ From the developer’s POV, what will your software do?
    ‒ What are the main components of your system? What do they do?
    ‒ What is a high-level block diagram of the architecture of the system?
    ‒ What is a minimal system that would have some value to the customer?
    ‒ What are some possible enhancements that customers would value?
    ‒ How will you test your system?

The software will ultimately try to help the user to more easily use Homebrew and make it clear and concise as to what it is doing. There will be two main components of the code. There will be the code that runs the UI, and the code that calls and manages what homebrew is doing. A minimal system that would have value to a user would be a simple GUI that could be used to see what packages Homebrew has installed, and it would also allow the user to install new packages at the click of a button. In the early stages of development, we will be testing the application ourselves by simply running it and trying out commands. Once we get farther along in the development, we hope to get other users to help us test the application and provide feedback.

The tools that will be used in the project are all open source and readily available to use along with extensive documentation. The tools that will be used are:
- Homebrew -- The package manager the GUI is being created for
- Flutter -- An open source SDK and UI library that is being used to create the UI 
- Dart -- Programming language that is being used on the project


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
    
    The schedule consists of first identifying the problem we want to solve by building our tool, and then by figuring out whether our idea solves the problem.We will accomplish these first stages by creating some initial design mock-ups and technical architectures to showcase the functionality of the system.Then we will present these designs to potential users in order to get feedback which will help us understand to which extent our solution solves the root problem.This entire process will be completed within the begin weeks of the project (2/13-3/6).Afterwards, we will refine our problem and solution definition to better suit the feedback given by our initial user.We will begin to develop a backend that allows us to download and search through existing packages within the homebrew ecosystem.As we are developing out initial backend, we will be finalizing a mid-fidelity design mock-up that will be slightly more representative of the final look of the project.These stages will be completed in the weeks of 3/7-3/20. Then the final stage of the product will be modifying the user interface to match the new design and connecting it to the backend, these portions should be completed from 3/21-4/10.    
    
    The system, as we see now, is definitely feasible from a technical and design standpoint.
    
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
    
    The tools and programs that our project are based on are protected by open-source licenses. Therefore, we must respect the license agreements under the BSD 2-Clause License for modifying Homebrew. Since our technology is an extension of an existing tool and is used to enhance the user experience of the tool, there is not any major ethical or social concern we foresee.
    
- Resources
    ‒ Will you have access to the data you need?
    
    The packages and data belonging to those packages should be accessable as they are avialable for download via the Homebrew package manager.
    
- Descoping
    ‒ What will happen if the full functionality can not be implemented
    - Will the reduced functionality operate?
    - Will it be useful (at least partially solving the problem)?

    If we cannot complete the full functionality of the tool, we should still be able to showcase information about package and let users view the downloaded packages. Some functionality such as full-text search for package descriptions may be more difficult to implement and would not be entirely essential for a partially functioning product. This tool will still be useful to users as it gives them a visual method by which packages can be inspected.

## Process Selection

The process that was selected for the development of the Homebrew GUI tool is the iterative process. The iterative code development process is an agile-like process in which each iteration is a week or two with a design-build-test cycle approach. These short iterations allow for customer feedback to be readily applied to the next iteration. For our project, feedback will come from other computer science majors to better understand what should be done in the next iteration. The iterative design process also allows for testing at the end of each iteration, unlike the waterfall method. The waterfall method tests only towards the end of the project. The issue with testing being performed this late is that it makes it highly likely that bugs will be missed. This is not an ideal situation for any project; however, it is especially not ideal for the project in this class due to a fairly strict deadline. If bugs are left to the end of the course, the project could be in jeopardy of not being completed at all. 

Another development process that was considered was the V process which uses a level approach to design and testing. The appeal of this process was the two fold approach of designing and testing the project on the fly. However, the big disadvantage of this approach is that it is eerily similar to the waterfall approach with how it can be difficult to adapt to requirements changes. This difficulty of not being able to easily adapt the project to requirement changes and the issues with late testing is why the team settled on using the iterative process of development because of its safeguards from these issues.

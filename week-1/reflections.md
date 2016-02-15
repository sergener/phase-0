# 1.1 Think About Time Reflection

I looked at information about mindfulness, time boxing, getting into the flow/zone, and overcoming ingrained habits. Many I either knew about or had considered before, but it was very helpful to actually read more about them.

Time boxing is a time management technique- a team or person chooses a period of time in which they will work, at which point they will evaluate what they accomplished.

Over the years I’ve gotten better at time management in general; in graduate school I had to get over the stress that caused me to procrastinate to be able to write my thesis in time. That said, I’m still a work in progress, and will sometimes let tasks wait until the last minute. I actually really like the timebox strategy for several reasons. I think having a time limit reduces stress and, since the periods tend to be fairly short, forces you to dive in and focus instead of dawdling. I think it’s easier to accomplish more because of this and takes away a certain amount of anxiety that can make the work seem less engaging or interesting. It helps to get you into the zone, basically. I actually use this technique to clean after learning it from http://www.unfuckyourhabitat.com/ and think it would be smart to make the effort to utilize it in DBC.

Mindfulness is also so important. Understanding yourself, your habits and your impulses in a way that isn’t negative is really the first step into getting better at dealing with them. Having lizard brain reactions is normal, but now that I have a word for it and can recognize what they are I can work on learning how to overcome those impulses.

I think this list of resources is also very useful to continue to reference as the course goes on, and I’ll try to keep researching the different techniques and use them to fine-time my work habits over the next few months. Overall though, I have a general plan for time management. I work 2-4 days a week, but mostly have Monday and Tuesday free. I’ll use the time boxing techniques to make my way through as much of the material as possible during those days. Doing it early in the week will greatly reduce anxiety and leave me the time I want to pursue the extra challenges and engage with the community. I’ll also schedule in the office hours and hopefully meet-ups to be able to really cement the material I learn.



# 1.2 The Command Line Reflection

The shell is a program that takes orders the user types and gives them to the operating system to implement. It was the only interface for early Unix teletypewriter computers and the basis of modern operating systems. Bash acts as the shell OS on certain operating systems.

I wasn’t always able to successfully use all the commands. I couldn’t quite grasp how to use pushd and pulld totally correctly had to play around a little bit to figure out how to implement them. As this is my first time using the shell, my initial difficulty was understanding the linear way it works while trying not to be worried that I would do something wrong and mess up my computer. Once I got the hang of it, though, it all started coming much more easily! I found that being able to successfully navigate the folders and files was really important, as well as being able to change and manipulate them. While the other commands are important as well, if you can’t navigate and make sure you’re in the correct place you can’t accomplish anything. For that reason I’d say “cd”, “ls”, “mkdir”, “rmdir” and “touch” are very important. Man is also very important in case you’re unsure exactly what you’re doing.

I did manage to memorize everything.
Pwd prints the working directory (prints the directory you’re currently in)
ls lists the contents of the directory
mv moves a file or directory and can also rename it
cd is change directory
touch makes a new empty file
mkdir makes a new directory
less opens a file and lets you page through it
rmdir removes an empty directory
../ This means the directory above the one you’re in. CD ../, for example, will bring you up a directory.
rm Remove file
help When you type help or man with a command following to find out what that command does.


# 1.3 Introduction to Version Control
(I know this wasn't in the 1.5 instructions, but I wanted to include this for my own reference)

Version control allows the user to view the entire history of revisions made to one or more files and merge revisions made by different people. Because the revisions are logged to include the person who made the change, a timestamp, and a message, it’s possible to see the history of changes and roll back the document, software, or program. Developers use version control because it allows them to keep track of changes and the evolution of a project and, if a bug or glitch is noted, more easily find when it was implemented to fix it. The saved changes to code are called commits. The developer will make changes to a repository by adding or staging the folder or file, and then save the changes to the repository with the commit.

 

Git is software that equips file folders in comp with version control. Any individual folder on a comp can be a Git repository; repositories shouldn’t exist within one another, and large folders like a desktop should not be a repository. GitHub is a popular cloud repository storage service, which allows Git repositories to be saved online. GitHub also provides a browsable history of changes and allows a user to share code with other developers. For code that multiple users may be working on, GitHub is valuable in that it allows multiple developers to work on the same project. Using branches, they can also work on code without having to commit it back to the master code until it is finalized, allowing the master code to remain polished while the developers figure out the best way to implement new code.

# 1.4 Forking and Cloning Reflection  

To create a new repository on GitHub you should open to your GitHub page and go to the upper right to click on the “+” symbol. In the table that drops down, click “new repository”.

 

In the page that opens, you have a few options in how to create this new repository. You should name it something short and informative. I named mine /phase-0. Because I wanted it to be publicly viewable, I made it public, though it can also be made private.

 

Licensing choice is based on what you plan to code.

 

To then clone the repository to your computer, click on the repository in GitHub. There will be a clone URL available in HTTPS that you can copy.

 

Open the terminal on your computer and make sure you are in the correct directory that you want to put the clone in. Use the command

> git clone [URL you copied]

to clone it to your computer. If you haven’t recently entered your username and password, you may be prompted to do so.

 

To fork a repository another user has made that you’d like a copy of, you go to their repository and click “Fork” on the top right part of the page. You’ll be prompted to decide where the repository should fork to. Once you choose, you will be redirected to the copy of the repository, which you can identify as yours because it has your username in front of the repository name. You can then clone this repository to your computer.

 

Forking repositories is important because it allows you to have a copy of the code that you can play around with without affecting the original user’s code. Since you can use this repo independently, you can do what you want without having to commit back to or change the original code. If you want to, it is possible to sync, but it also allows different users to take a base code and use it for different things.

 

Overall I found the process of creating a repo, cloning, and forking on GitHub pretty straightforward, though I want to practice more to find areas that may give me problems in the future. It’s once I get to the command line that I have some difficulty manipulating repos, so I have to go back and practice more there.
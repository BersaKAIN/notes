## Always love and care about your project.

This one should be especially true for me. Whenever I feel the project is useless or not even that case, just feeling some negative aspects of the project, either some part is really hard to handle or there is less focus on it or it becomes tedious on some part of it, I became discouraged and stopped putting 100% onto the project. This will never let the project happen.

Think about of the project, always make sure you are energetic before you go in.

## Kaizen

Kaizen is the Japanese term for continuously making small improvements. This is very crucial to software engineering as well as to self development. Not only make improvement, but also make some EVERY DAY. Make sure after every day you are better programmer.


## 

The greatest of all weaknesses is the fear of appearing weak. 
-- J. B. Bossuet

## Take Responesbility

Error occurs and you are the one to blame.

Don't accuse others or blame situations or tools. That would make you look lame. 
The only thing you should think about is to fix the issue. What options do you have, what are the possible results.

## Stone Soup and Boiled Frogs

Perple are more willing to join ongoing success than risky startups. So some time you should just bring some stones and ask for the other ingredients.

## Broken Window

If some project has some crappy code in it, then the others wouldn't pay much attention maintaining it well. So don't be the first one to wrtie bad code and put out fire (bad code) as soon as you find it.

## Managing Your Knowledge Portfolio

### Invest Constantly

- Learn at least one new language every year.
- Read a tech book each quarter.
- Read non tech books too.
- Take classes (one each month)

### Opportunities of Learning

You have come along many problems you feel hard to solve. Don't let it go or stop there. Ask people who know it. This is one way of building personal relationships. Also, be sure you don't ask too much like you did in salesforce or don't only ask but not doing your own practice.

At the same time, don't let the time constraint or goals make you only skim through your materials. You better have full understanding of what you read and think critically about it.

About asking a guru:
- Be polite before and after you ask the question.
- Be specific about what you are asking.

## Communication

Have an outline of what you write for documentation or the important talks. Make sure you get across those topics.

Know your audience and prepare what they can understand and are interested in. That involves constantly analyzing people's needs and motives.

Choose the right moment of talking, always start by asking: "Is it a good time to talk about ...? "

Get back to people. If you want people to respond to your emails, you will have to respond to theirs in the first place.



Buy low and sell high: This means learn some technolodge before it gets popular. Which will involve constanting trying new things out and the instinct of seeing future trend.

# Pragmatic Approach

## Evils of Duplication
The program we write is a code representation of our knowledge of natural laws and customer requirement. We want to put a single piece of knowledge in a single, umambiguous place. We Don't Repeat Yourself. We want to avoid duplication. It might be easy when you are writing the code, but it will introduce more, much more, complexity when you are maintaining the code.

However, there are cases that duplication seem impossible to avoid.
- Imposed Duplicaiton: Duplications that are imposed by the system, using different languages. We can address this by using some form of metadata and take those metadata to generate code in different languages or in different layer of the system.

- Inadvertent Duplication: Duplication introduced by bad design.

- Impatienet Duplication: Duplication introduced by bad habits of programmer.

- Interdeveloper Duplication: Duplicaiton introduced by multiple programmers having their own implementation of the same knowledge.

## Orthogonality

When DRY means avoid duplication of knowledge in the code. Orthogonality means avoid dependency amongst different parts of code. Changing the internal behavior of some module should affect the others.

## Reversibility

Nothing is more dangerous than an idea if it's the only one you have.

-- Emil-Auguste Chartier, Propos sur la religion, 1938

very true for me, having an cool idea and walk around and sell the idea, but if that is the only thing you have, it's either easy to be copied or it's just idea without implementation.


Critical decisions in programming often involves drastic change either in the language/system/architecture/third-party software. Your responsibility is then to design the system to make the program robust in such situation.

COBRA: Common Object Request Broker Architecture, an architecture that enables pieces of programs, called objects, to communicate with one another regardless of what programming language they were written in or what operating system they're running on.

## Tracer Bullets

Tracer bullets and prototype. Tracer bullets are skeleton of your future project. One big difference between prototype and tracer bullets is that the code of prototype is disposable while the code of tracer bullets will stay and be the foundation of the project.

Make prototype when there is risk about decison. If you are not sure of some choice or you have never done some thing, make a prototype to verify your idea.

## Domain Languages

The limits of language are the limits of one's world.
-- Ludwig Von Wittgenstein

The language you use may affect the way of your thinking.

So, we can implement a mini-languege to cover specific task.
C++ users can use Yacc and Java users can use javaCC. We can also use extension feature in some language (such as in python) to cover this part.


## Estimating


We need estimation of answer almost all questions. The only difference is the accuracy. When the manager ask you many long will the work take, think about it. The units of your answer also imply the accuracy of the answer. 125 working days and 6 month are actually the same while the expectation of the asker may vary. Also, have an understanding of how accurate does the asker want. Your mom asking for dinner time may be ok with 30min error, while the manager asking for time of a request should expect some mili-second error answer.


Don't just give your answer, also give your model and reasoning behind it. This will help someone else to find potential error in your estimation. The finer your model is, the more accurate your estimation will be. Let your experience lead you to some where you have been through and thus make the estimation rather accurate. When you are calculating the answer using your model, use some parameters and probably calculate them in a spreadsheet. After you make your estimation, keep track of your progress and refine the model often.

Now the real question is: what to say when you are asked for the estimate. SAY "I'll get back to you." Get some results after thinking rather than guessing some number at the coffee machine.


# The basic Tools

Programmers, like all craftsman, need tools. However let the need guide you what tools to find rather than the opposite, let the tools define what you can do.

## Debugging
It is a painful thing
To look at your own trouble and know
That you yourself and no one else has made it
-- Sophocles, Ajax

No software is perfect and there is always bug in it. Don't blame yourself or someone when you are debugging the system. Try to consider it as a problem solving. Believe in your logic and don't go to mad about it. Take a break if you need it.


# A Debugging Mindset

The easiest person to deceive is one's self
-- Edward Bulwer-Lytton, The Disowned

Don't panic, there are times that after spending hours on a bug you feel your code should work and it is the language itself or somewhere else in the system to blame rather than your own code. DON'T! Most of the time it should be in your code and it's just too stupid to find. Instead of blaming others, start to review all your assumptions and the reason about where the error might be.

Once you think you know what is going on, make sure the program thinks the same.

Try to explain the problem to another one, or even a rubber duck.

"select is broken". We worked on a project where a senior engineer was convinced that the select system call was broken on Solaris. No amount of persuasion or logic could change his mind (the fact that every other networking application on the box worked fine was irrelevant). He spent weeks writing work-arounds, which, for some odd reason, didn't seem to fix the problem. When finally forced to sit down and read the documentation on select, he discovered the problem and corrected it in a matter of minutes. We now use the phrase "select is broken" as a gentle reminder whenever one of us starts blaming the system for a fault that is likely to be our own.

# Pragmatic Paranoia






















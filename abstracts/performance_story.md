(title and abstract are options, not the finished proposal. These all refer to the same content and presentation)

# Cyril the SQL Squirrel: how to handle a lot of data very quickly.

*Cyril lives in my computer and works tirelessly fetching information which is squirreled 
away in my database. He obediently does exactly what I ask him to do.*

*If I ask him to do something which takes a long time, he won't complain. 
Cyril will just spend the whole day working away, fetching my data.*

*The problem is that sometimes I don't even realise I've asked him to do something which 
takes a long time. Until, that is, it takes him a long time to do it...*

...

In this talk our furry friend will help us to understand the reasons why some functions take
a long time to run when the application is interacting with a database via ActiveRecord. Armed
with this knowledge, I'll be looking at ways to make Cyril's life easier in order to
make the application work faster.

We'll be taking a whirlwind tour of methods to help us speed up the process of templating, creating,
modifying, and presenting hundreds or thousands of rows of data in lighting-quick time.

---

# When is a feature not a feature?

There are a number of answers to this simple riddle...

When a feature features on a feature list, but doesn't feature in the application, yet?
When it's fully functional, but nobody uses it.
When it's so slow that nobody uses it a second time?

One of my first tasks as a professional programmer was to build a chemical inventory system.
It had to keep track of the contents, context and properties of, sometimes, hundreds of chemical samples
being stored together on a 'plate'. The most complex part of this system is plate transfers, removing
part of the samples in one or more plates to produce new containers.

Plate transfers involve retrieving hundreds of rows of data, running calculations over it, and combining it 
with template rows for both the new plate and the transfer itself. For this reason they ran so slowly that
it was an intolerable feature to use, and so it wasn't used. Nevertheless, it met requirements and was part
of the app. In time, it was subject to enhancement requests, and performed even more slowly. 

A year ago, I was tasked with improving the performance of this feature, and in the process learned a number 
of techniques to improve performance when processing large quantities of data with relation to in-database 
templates. This talk is a rundown of those techniques including presentation, duplication and manipulation of 
hundreds of rows at a time.

## Fields:
- *Title*
- *Abstract*
(see above)

(for reviewers only)

- *Format* (20 or 5 mins) - I could convert to lightning
- *Purpose*: What is the outcome of your talk and who will benefit from it? Why does this talk exist?

The main audience for my talk is anyone who has, or might one day have, the task of producing, presenting and 
modifying large volumes of data in a single action from a Ruby application. It's partly a cautionary tale about
a feature I developed which was a performance hole, but the meat of the talk will be about the ways I made the
code more efficient, with fewer instructions to the database.

I believe this could come in useful in the professional lives of most developers at some point or another.

- *Detail*: Be clear about your plan for time usage and the content/outline of your talk. Explain your narrative. 
Don't be afraid about giving away the 'secret recipe' for your talk. I need to know this information in order 
to make the the right decision for the conference.

Throughout this talk I intend to use the gimmick of an original 'storybook' character, Cyril the
SQL Squirrel to demonstrate ways that SQL commands to databases can cause perfomrance issues.

The opening of the talk would be to briefly talk about a feature I developed early on in my Ruby development career.
It was the management of chemical samples on 'plates', with template rows for the wells in the plate, and a polymorphic
reference to the chemical entities themselves. 

I had a relatively rudimentary knowledge of Ruby and Rails at the time, so I wrote the first implementation of the 
inventory system with large amounts of code stored in ActiveRecord models. 

A particular performance issue came with plate transfers, which involve
removing some of the volume of samples on one plate, and moving them to another (or 4 plates to one new one, or diluting
them many times on the new plate). Because a plate can contain up to 1500 wells, an inefficient implementation of this
feature lead to a serious perfomrance issue.

Long story short, it became a part of the app which was so slow, no customers acutally used it for 6 years.

The main reason why this was an issue was that the most numerous model instances, while loaded in bulk, were handled
individually. Related records were fetched over and over, and a separate UPDATE statement was fired for each.

There'll be a Cyril story at this stage, demonstrating the main reason why this became so slow. Namely that,
after loading the first set of rows, it repeatedly loaded the same related records (often repeating SELECT commands 
for the exact same rows).

It even had requirements from our customers, asking for it to be enhanced further. The job did even more heavy-lifting
and ran even more slowly.

Last year I was tasked with fixing my this perfomrance hold I introduced in 2012. What followed was a process of learning
ways to restructure the code in order to optimise it for fewer SQL calls, both while retrieving data to work with and 
collecting data for fewer INSERT or UPDATE commands.

The bulk of the talk will be a lite of the techniques I learned. For each of these I'd present a brief explanation of
the techniques and their performance savings using a Cyril story. I also plan to demonstrate each using an example
graphics application which (perhaps iladvisably) saves each pixel as an individual row.

Ideas I intend to introduce and demonstrate are:

* Optimising code to separate fetching, processing and saving data, instead of switching between them.
* Caching data, or eager-loading data to reduce the number of calls
* Grabbing just the data we need from multiple tables, independent of AR models
* Where applicable, allowing the database to run calculations on the data before sending them to the app.
* Treating lists as tables in the SQL, to 'stamp out' large quantities of near-identical data
* A joint insert/select statement to use 'template' rows of data to create new rows

The graphics app will use template rows (probably PixelType) to justify the individual rows working like this,
we'll be able to see that modifying a PixelType will change the colour scheme for the entire applcation.

I don't know if I'll be able to pull this off, but I'd like a fun caveat to the talk to be a demonstration of 
some form of celular automata system being fed with the graphics produced. Something like all the pixels falling
to the bottom of the screen, then moving around. Climing over each other etc.

------------

Having considered my options, I believe the talk could be converted to a 5-minute format, covering less ground but
still meaningfully introducing how I had to think and code differently to improve performance when dealing with 
hundreds of rows.


(title and abstract are options, not the finished proposal. These all refer to the same content and payoff)

# Cyril the SQL Squirrel

*Cyril is a very hard-working squirrel who lives in my computer. 
His job is to help me out by fetching information I have squirreled away in my database.
He's also a very loyal and obedient squirrel; he does exactly what I ask him to do.*

*The problem is that if I ask him to do something which takes a long time, he won't complain. 
Cyril will just spend the whole day working away, fetching my data.*

*A bigger problem is that sometimes I don't even realise I've asked him to do something which 
takes a long time. Until, that is, it takes him a long time to do it...*

...

In this talk our furry friend will help us to understand the reasons why some functions take
a long time to run when our application is interacting with a database via ActiveRecord. Armed
with this knowledge, I'll be looking at ways to make Cyril's life easier and, in the process,
make my application run faster.

We'll be taking a whirlwind tour of methods to help us speed up the process of templating, creating,
modifying, and presenting hundreds to thousands of rows of data in lighting-quick time.

---

# When is a feature not a feature?

There are a number of answers to this simple riddle...

When a feature features on a feature list, but doesn't feature in the application, yet?
When it's fully functional, but nobody uses it.
When it's so slow that nobody uses it a second time?

A few years ago, I worked on a feature which met all three of these definitions. It involes numerous
layers of templating, saving and modifying hundreds of rows and a huge amount of database activity.

---

# Strategies for reducing database activity when dealing with large quantities of data

(title and abstract are options, not the finished proposal. These all refer to the same content and presentation)

# Cyril the SQL Squirrel; how to handle a lot of data very quickly.

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

---

# Strategies for reducing database activity when dealing with large quantities of data

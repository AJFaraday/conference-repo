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

(for reviewers only)

- *Format* (20 or 5 mins) - I could convert to lightning
- *Purpose*: What is the outcome of your talk and who will benefit from it? Why does this talk exist?
- *Detail*: Be clear about your plan for time usage and the content/outline of your talk. Explain your narrative. Don't be afraid about giving away the 'secret recipe' for your talk. I need to know this information in order to make the the right decision for the conference.


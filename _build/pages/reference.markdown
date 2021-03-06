Language reference
==================

BASIC is a very simple language and it is a perfect tool for calculations or utilities.
Its name stands for (B)eginners (A)ll-purpose (S)ymbolic (I)nstruction (c)ode. It was developed by John
Kemeny and Thomas Kurtz at Dartmouth College during the middle of 1960, and was one of the most
popular languages for several decades.

::: contentsPanel ::
::: contentsHeader ::
Contents
:::

#. [Console](/pages/console.html)
#. [Data](/pages/data.html)
#. [Date](/pages/date.html)
#. [File](/pages/file.html)
#. [Graphics](/pages/graphics.html)
#. [Language](/pages/language.html)
#. [Math](/pages/math.html)
#. [String](/pages/string.html)
#. [System](/pages/system.html)
:::

How to read the language reference syntax
-----------------------------------------

+ Everything written inside of [] characters are optional values.
+ Everything written inside of { characters means you must select one of them.
+ The symbol | means OR.
+ The symbols ... mean you can repeat the previous syntax.
+ Keywords are written with capital letters.
+ Parameters are written with lower letters.
+ Keywords with suffix () are functions.
+ Parameters with suffix () are arrays.

~~~
FOO     <- This is keyword
FOO()   <- This is function
foo     <- This is variable/parameter
foo()   <- This is array/parameter
{A|B}   <- This means that you must type A or B
[{A|B}] <- This means that you must use A or B or nothing
~~~

The following example means that you must give the first parameter (a) but you can use the second (x)
only if you want to. But if you want to use the (x) you must also separate it from (a) with a comma.

~~~
FOO a[, x]
~~~

The next example means that you must use the first parameter. You can also use second parameter
but you must separate it with ',' or ';'. You can also repeat the last syntax more times.

~~~
FOO var [{,|;} var2 [...]]
~~~

Searching this site
----------------

You can find:

- Escape codes under Console or under Articles "Escape Codes"
- ARRAY under Data
- ISMAP under Data
- ISREF under Data
- STEP under Graphics
- aspect under Graphics
- FILLED under Graphics
- COLOR under Graphics


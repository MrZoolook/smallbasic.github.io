# DATA

> DATA constant1 [,constant2]...

Stores one or more constants, of any type, for subsequent access via READ command.

DATA commands are non executable statements that supply a stream of data constants for use by READ commands. All the items supplied by all the DATA commands in a program make up one continuous "string" of information that is accessed in order by your program's READ commands.

```
RESTORE MyDataBlock
FOR I=1 TO 3
    READ v
    PRINT v
NEXT
END
...
LABEL MyDataBlock
DATA 1,2,3
```


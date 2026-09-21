## Filesystem Tree

- in the earliest PCs there were no folders --- files were stored in a single folder. that was okay for a few files, but when the ability to create folders inside of folders arrived,we could organize the files more effectively --- commands go in one folder, files for users in another, programs we install in another, etc.
- when we use a file explore UI, folder is a natural visual term for a folder, but when we work in the commandline we use the term **directory** for folder.
- have a figure of a classic OSX filesystem tree
- point out that UNIX like systems have a mostly common way of storing files, but differences have evolved: OSX calls the directory for user home directories `Users` and Linux calls it `home`; OSX stores applications in `Applications` and Linux generally puts them in `opt` or `bin`.
- have a figure of a classic Windows filesystem tree
- Windows chose a very different way of organizing the filesystem, but it does store user home directories in `Users`.
- we can indicate an **absolute path** to a particular file or directory by listing all the directories between it from the top of the file system tree to the file or directory. rather than using commas, we use a path separator which is / in UNIX like operating systems and \ on windows. show some examples.

## Names

- Windows and OSX are case insensitive
- dealing with \ and / in filenames
- spaces in filenames
- some extensions have special meaning in Windows
- extensions are hints for people and programs, but except for the few extensions in Windows, don't change what the file is or can do.
- review common extensions

## Current Working Directory

- at any point in time a shell or a program or application is running in a particular directory called the **current working directory**.
- relative paths and . and ..
- changing the current directory.
- no argument `cd`, `cd -`, `~`, `~USER`.

## Additional storage

when adding storage, we need to graft into the tree

### Windows

doesn't actually graft. it just creates a drive letter

- switching drives
- absolute paths with drive letters

### UNIX

- mount points
- where USB keyfobs appear
- filesystem images

## hidden files

- Windows uses a file attribute, but UNIX uses a naming convention
- UNIX hidden files are not hidden at all; some applications just don't show names that start with . by default.

## Working with files

### Listing Files

### Create Files

- touch
- creating files with redirect
- WARNING: Windows does not allow writing over or sometimes even looking at files that are open --- being used by a program

## Copy

- copy a file
- copy a directory
- overwrites
- remind about the open file rule --- show an example

## Move and Rename

- move and rename are the same, even though on windows they have different commands
- moving across filesystems becomes a copy

## Remove

- removing files
- removing directories
- recursive remove --- add warnings

## Links and Junctions

-A **link** gives an existing file or directory a second name. It is the one feature in this chapter that makes the tree less straightforward, because two paths lead to the same thing. does not work across filesystems
- A **symbolic link**, or **symlink**, is a small file that holds a path to its target. Opening the link opens the target; deleting the target leaves a link that points nowhere. works across filesystems
- A **hard link** is a second directory entry for the same file data; the file stays until every hard link is removed. Hard links are limited to files on the same filesystem. Windows adds a **junction**, an older kind of directory link that works without special privileges.
- Add an annotated filesystem figure to show hard and symbolic links

## Advanced Listing

- show the more advanced flags of ls
- find
- tree
- dir /s
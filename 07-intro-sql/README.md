# Intro to SQL

* What/Why/How SQL?
* CRUD
* SQL Basics

## What / Why / How SQL

### What

- programming language for databases
- SQL: Structured Query Language
- used a lot for back end programming
- "relational" ???

### Why

Database:
- somewhere to put stuff
- get stuff out later
- hasn't changed in the meantime - persistent
- tables

Why not just write things to files?
- lot of files ?
- all spread out
- hard to share
- bugs!
- speed
- standardized?
- security

Note:
- there are alternatives!
- NoSQL databases

### How

Tools:
- sqlite3
- CLI tool
- program 'underneath' that actually reads + writes to the database

- sqlite browser
- connect sqlite3  to a ruby program

...Let's try it out!

- mysql
- postgres
- oracle sql
- microsoft sql server

## CRUD

- C - Create -
- R - Read (retrieve) - SELECT ... FROM ... WHERE
- U - Update -
- D - Delete -

## SQL Basics

### Tables
What is?

- data container
- excel sheet
- rows and columns
- organizing
- bucket for _one kind_ of data

Many tables per database

Table - like a class
Row - like an instance

Each _row_ has a primary key (id)
Unique - across table AND across time
identifies that row

CSV - Comma Separated Value

## Normalization
Relate our data

- Relational

Albums belong to Artists
Artist have many Albums

Break our data apart, give related objects _references_ to each other

Fan
{
  name: "Rob:,
  artistId: 169,
}

Artist
{
  artistId: 169,
  name: "Black Eyed Peas",
}

## Denormalization
put our data back together, give related objects _nested_ information

Fan
{
    name: "Rob",
    artist: {
      name: "Black Eyed Peas",
    }
}


### Commands

Three kinds of commands:

1. Commands to sqlite3, the program

.mode column
.headers on
.exit .quit
.tables
.schema artists -- gives us the SQL to create this table

2. Commands that _change the shape_ of our tables

```
CREATE TABLE
DROP TABLE
ALTER TABLE
```

3. Commands that CRUD data

Create - INSERT
Read - SELECT [stuff I want] FROM table;
  WHERE [filter my rows]
  LIMIT
  OFFSET
  JOIN

  COUNT
  GROUP BY
    HAVING
  ORDER

Update - UPDATE
Delete - DELETE FROM ... WHERE ... ;

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists;
```

1a. Write the SQL to return all of the rows in the tracks table?

```SQL
SELECT * FROM tracks;
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists WHERE name = "Black Sabbath";
```

(Cool example)
```SQL
SELECT "Black Sabbath" FROM artists;
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans (id INTEGER AUTOINCREMENT PRIMARY KEY, name TEXT);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans ADD COLUMN artistId INTEGER;
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
INSERT INTO fans(name, artistId) VALUES ("Rob", 169);
```

6. Write the SQL to update your name in the fans table to be a new name?

```sql
UPDATE fans SET name = "Rob Cobb" WHERE id = 1;
```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
IMPOSSIBLE - HW
```

8. Write the SQL to display an artists name next to their album title

```sql
SELECT artists.name, albums.title
 FROM artists
 JOIN albums
 ON artists.artistId = albums.artistId;
```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql

```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql

```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have more than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql

```

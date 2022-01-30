#! /bin/bash

current_time=$(date '+%m-%d-%Y %T')

echo "[$current_time] Creating Sqlite DB"

if [[ -f "./db/test.db" ]]; then
  echo "[$current_time] DB already exists. Moving on..."
else
  /usr/bin/sqlite3 ./db/test.db \
    "CREATE TABLE
       main.heroes(NAME CHAR(75) PRIMARY KEY NOT NULL, \
       ALTER_EGO CHAR(75), \
       CATCH_PHRASE CHAR(150), \
       AGE INT, \
       STRENGTH INT, \
       INTELLECT INT, \
       DEXTERITY INT, \
       FORTITUDE INT, \
       SPEED INT
    );"

  echo "[$current_time] heroes table created!"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES
    ('Superman', 'Clark Kent', '', 32, 100, 70, 90, 68, 90);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES
    ('Batman', 'Bruce Wayne', '', 34, 50, 87, 80, 78, 40);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Flash', 'Barry Allen', '', 22, 70, 75, 98, 74, 100);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Spiderman', 'Peter Parker', '', 17, 70, 70, 90, 68, 55);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Hulk', 'Bruce Banner', '', 43, 100, 45, 60, 100, 60);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Iron Man', 'Tony Stark', '', 42, 70, 96, 84, 78, 87);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Aquaman', 'Arthur Curry', '', 35, 76, 60, 80, 68, 65);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Captain America', 'Steve Rogers', '', 118, 82, 70, 90, 89, 68);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Thor', 'Thor', '', 97, 99, 55, 90, 90, 80);"

  /usr/bin/sqlite3 ./db/test.db \
    "INSERT INTO heroes
    (
      NAME,
      ALTER_EGO,
      CATCH_PHRASE,
      AGE,
      STRENGTH,
      INTELLECT,
      DEXTERITY,
      FORTITUDE,
      SPEED
    )
    VALUES ('Wonder Woman', 'Diana Prince', '', 38, 98, 90, 90, 88, 90);"
fi

echo "[$current_time] heroes table populated!"

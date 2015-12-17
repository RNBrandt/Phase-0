

A one-to-one database is one where two things have a single relationship to one another.  You would use a one-to-one database when you need to connect two things that perhaps have many different attributes, but are only related to one another in one important way, or one is included in the data of the other.

A many to many database is when two tables have related information, but there is no direct connection between the two which requiers a join table.  You would want to use a many to many relationship if you have two tables that have different data, and one is not a subset of the other, but they are still related.

So far everything makes sense conceptually about database schemas.  The only real trick I expect is making sure that everything has a unique identifier, and everything is as connected as possible.
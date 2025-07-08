## Data
#### Definition
- Collection of facts
- Consists of numbers/words taken through measurements
- Goal of describing things
#### Describing Data
- Numbers
	- Continuous vs Discrete
	- Binary vs Non-Binary
- Words
	- Nominal vs Ordinal
	- Numbers stored as text
	- Text coded as number
	- T/F
- Nuance is important to accurately describe reality
## Datatypes
#### Numeric Continuous
- Any value in a range
- Datatypes:
	- Float
#### Numeric Discrete
- Whole value in range -- No fractional values
- Datatypes:
	- Integer
	- Binary
#### Categorical
- **Nominal**: Values are independent of each other
- **Ordinal**: Values have a hierarchy/relative value to each other
- Datatypes:
	- String
	- Boolean
#### Datetimes
- Frequently imported as strings
- Casting to datetime allows programs to use them
- Datatype:
	- Datetime
## Data Structures
#### Lists
- Ordered sequence of elements
- Can be numbers, strings, or mixed
#### Dataframe
- 2D object with labeled columns and rows
- Multiple lists bound together
#### Dictionary
- Key-value pairs
- Searched quickly with known key
- Can convert to data frames
#### Flat Files
- 2 dimensional data
- Rows represent observation
- Formatted for ease of analysis
- One file containing all info -- inefficient storage
#### Relational Database
- Goal is to put transformed data into relational database
- Tables relate to one another based on keys
- Can be queried in many ways
#### JSON
- Semi-structured
- Need to parse and load into DB
- Keys = column names
- Values = observations
# ============================
# 03_STRINGS_IN_REDIS
# ============================

# Set a string value
SET name "Manoj"

# Get value
GET name

# Overwrite existing value
SET name "Rahul"

# Set multiple key-value pairs
MSET name "Manoj" age "22" city "Delhi"

# Get multiple values
MGET name age city

# Set key only if it does not exist
SET user "admin" NX

# Set key only if it already exists
SET user "root" XX

# Set value with expiration (seconds)
SET otp "123456" EX 60

# Set value with expiration (milliseconds)
SET otp "123456" PX 5000

# Set and get old value
GETSET name "Amit"

# Get string length
STRLEN name

# Append to existing string
APPEND name " Kumar"

# Increment integer value
SET count 10
INCR count

# Increment by custom value
INCRBY count 5

# Decrement integer value
DECR count

# Decrement by custom value
DECRBY count 3

# Increment floating-point value
SET price 10.5
INCRBYFLOAT price 2.75

# Set substring at offset
SET language "Java_____"
SETRANGE language 4 "Script"

# Get substring
GETRANGE language 0 3
GETRANGE language 4 -1

# Check existence
EXISTS name

# Delete key
DEL name

# Set expiration
EXPIRE count 60

# Check remaining TTL
TTL count

# Remove expiration
PERSIST count

# Get and delete value
GETDEL otp

# Get and set new value atomically
GETSET city "Mumbai"

# Copy key
COPY city new_city

# Rename key
RENAME city location

# Rename only if destination doesn't exist
RENAMENX location place

# Show type
TYPE location
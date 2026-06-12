# ============================
# 04_HASHES_IN_REDIS
# ============================

# Create hash field
HSET user name "Manoj"

# Add multiple fields
HSET user age 22 city "Delhi" role "Developer"

# Get one field
HGET user name

# Get multiple fields
HMGET user name age city

# Get all fields and values
HGETALL user

# Get all field names
HKEYS user

# Get all values
HVALS user

# Check if field exists
HEXISTS user age

# Number of fields
HLEN user

# Increment integer field
HINCRBY user age 1

# Increment floating-point field
HSET product price 99.5
HINCRBYFLOAT product price 10.25

# Set field only if it does not exist
HSETNX user country "India"

# Delete one field
HDEL user role

# Delete multiple fields
HDEL user city country

# Get string length of field value
HSTRLEN user name

# Return all fields
HKEYS user

# Return all values
HVALS user

# Scan hash incrementally
HSCAN user 0

# Scan with pattern
HSCAN user 0 MATCH a*

# Scan with count hint
HSCAN user 0 COUNT 5

# Copy hash key
COPY user backup_user

# Check key type
TYPE user

# Check if hash key exists
EXISTS user

# Delete entire hash
DEL user
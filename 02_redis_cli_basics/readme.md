# Start Redis Server
redis-server

# Open Redis CLI
redis-cli

# Test connection
PING

# Set value
SET name "John"

# Get value
GET name

# Delete key
DEL name

# Check key exists
EXISTS name

# Set expiry
SET otp 123456 EX 60

# Check remaining time
TTL otp

# Increment
SET visits 0
INCR visits

# Decrement
DECR visits

# Increment by value
INCRBY visits 5

# Hash
HSET user:1 name John age 25
HGET user:1 name
HGETALL user:1

# List
LPUSH users Alice
LPUSH users Bob
LRANGE users 0 -1

# Set
SADD roles admin user
SMEMBERS roles

# Check type
TYPE user:1

# Scan keys
SCAN 0

# Database size
DBSIZE

# Clear current database
FLUSHDB

# Clear all databases
FLUSHALL
# Start Redis CLI
redis-cli

# Connect to a specific host and port
redis-cli -h localhost -p 6379

# Connect with password
redis-cli -a yourpassword

# Connect with username and password (Redis 6+ ACL)
redis-cli --user username --pass password

# Ping Redis
PING

# Check server info
INFO
# Select database
SELECT 0
SELECT 1

# List all keys
KEYS *

# Get key type
TYPE mykey

# Check if key exists
EXISTS mykey

# Delete key
DEL mykey

# Delete multiple keys
DEL key1 key2 key3

# Remove all keys from current database
FLUSHDB

# Remove all keys from all databases
FLUSHALL

# Database size
DBSIZE

# Current selected database
CLIENT INFO

# Set string
SET name "Manoj"

# Get string
GET name

# Set with expiry
SET token "abc123" EX 60

# Set if not exists
SET lock "1" NX

# Set if exists
SET lock "2" XX

# Increment
INCR counter

# Decrement
DECR counter

# Increment by value
INCRBY counter 10

# Append string
APPEND name " Kumar"

# Get length
STRLEN name

# Set expiration
EXPIRE name 60

# Check remaining TTL
TTL name

# Remove expiration
PERSIST name

# Rename key
RENAME name username

# Move key to another database
MOVE username 1

# Get random key
RANDOMKEY

# Monitor all commands
MONITOR

# Show slow queries
SLOWLOG GET

# Save database manually
SAVE

# Background save
BGSAVE

# Shutdown server
SHUTDOWN

# Quit CLI
QUIT
# or
EXIT
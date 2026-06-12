# ============================
# 08_KEY_MANAGEMENT_IN_REDIS
# ============================

# Create keys
SET name "Manoj"
SET city "Delhi"
SET age 22

# View all keys (avoid in production)
KEYS *

# Find keys by pattern
KEYS user:*
KEYS session:*
KEYS product:*

# Check if key exists
EXISTS name

# Check multiple keys
EXISTS name city country

# Get key type
TYPE name

# Rename key
RENAME name username

# Rename only if destination doesn't exist
RENAMENX username user

# Copy key
COPY username backup_username

# Delete one key
DEL username

# Delete multiple keys
DEL city age

# Delete asynchronously (non-blocking)
UNLINK backup_username

# Set expiration (seconds)
EXPIRE session:1 60

# Set expiration (milliseconds)
PEXPIRE session:1 5000

# Get remaining TTL (seconds)
TTL session:1

# Get remaining TTL (milliseconds)
PTTL session:1

# Remove expiration
PERSIST session:1

# Set expiration at Unix timestamp
EXPIREAT session:1 1750000000

# Set expiration at Unix timestamp (milliseconds)
PEXPIREAT session:1 1750000000000

# Get random key
RANDOMKEY

# Move key to another database
MOVE username 1

# Scan keys incrementally
SCAN 0

# Scan with pattern
SCAN 0 MATCH user:*

# Scan with count hint
SCAN 0 COUNT 10

# Scan with pattern and count
SCAN 0 MATCH session:* COUNT 20

# Get memory usage of a key
MEMORY USAGE username

# Dump serialized value
DUMP username

# Restore dumped value
RESTORE restored_user 0 "<serialized-value>"

# Touch key (update idle time)
TOUCH username

# Get object encoding
OBJECT ENCODING username

# Get idle time
OBJECT IDLETIME username

# Get reference count
OBJECT REFCOUNT username

# Flush current database
FLUSHDB

# Flush all databases
FLUSHALL

# Flush current DB asynchronously
FLUSHDB ASYNC

# Flush all DBs asynchronously
FLUSHALL ASYNC
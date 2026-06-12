# ============================
# 09_TTL_AND_EXPIRATION_IN_REDIS
# ============================

# Create a key
SET token "abc123"

# Set expiration in seconds
EXPIRE token 60

# Check remaining TTL (seconds)
TTL token

# Remove expiration
PERSIST token

# Set expiration in milliseconds
PEXPIRE token 5000

# Check remaining TTL (milliseconds)
PTTL token

# Create key with expiration
SET otp "123456" EX 60

# Create key with millisecond expiration
SET otp "123456" PX 5000

# Create key that expires at Unix timestamp (seconds)
SET session "active"
EXPIREAT session 1750000000

# Create key that expires at Unix timestamp (milliseconds)
SET cache "data"
PEXPIREAT cache 1750000000000

# Set value and keep existing TTL
SET token "new-token" KEEPTTL

# Get expiration timestamp (Redis 7+)
EXPIRETIME token

# Get expiration timestamp in milliseconds (Redis 7+)
PEXPIRETIME token

# Set expiration only if key has no TTL
EXPIRE token 120 NX

# Set expiration only if key already has TTL
EXPIRE token 180 XX

# Set expiration only if new TTL is greater
EXPIRE token 300 GT

# Set expiration only if new TTL is smaller
EXPIRE token 60 LT

# Remove expiration completely
PERSIST token

# Check if key exists after expiration
EXISTS token

# Example: OTP valid for 2 minutes
SET otp:user:101 "987654" EX 120

# Example: Login session valid for 30 minutes
SET session:abc123 "user101" EX 1800

# Example: Cache API response for 10 minutes
SET weather:delhi "{json-data}" EX 600

# Example: Temporary lock for 5 seconds
SET payment_lock "1" EX 5 NX

# Example: Rate limiting window
SET api:user:101 1 EX 60

# Check type
TYPE token

# Delete key manually
DEL token
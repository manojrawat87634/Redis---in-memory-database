# ============================
# 10_PATTERN_MATCHING_IN_REDIS
# ============================

# Sample keys
SET user:1 "Manoj"
SET user:2 "Rahul"
SET user:3 "Amit"
SET admin:1 "Root"
SET product:101 "Laptop"
SET product:102 "Mobile"
SET session:abc "xyz"
SET session:def "pqr"

# Match everything
KEYS *

# Match all user keys
KEYS user:*

# Match all product keys
KEYS product:*

# Match all session keys
KEYS session:*

# Match keys ending with :1
KEYS *:1

# Match keys starting with "a"
KEYS a*

# Match keys ending with "2"
KEYS *2

# Match exactly one character
KEYS user:?

# Match one digit
KEYS user:[0-9]

# Match digit range
KEYS user:[1-5]

# Match multiple characters
KEYS user:??

# Match three characters after prefix
KEYS app:???

# Match characters a, b, or c
KEYS user:[abc]

# Match characters except a, b, c
KEYS user:[^abc]

# Match lowercase letters
KEYS user:[a-z]*

# Match uppercase letters
KEYS user:[A-Z]*

# Match alphanumeric
KEYS user:[a-zA-Z0-9]*

# ----------------------------
# Production-safe alternative
# ----------------------------

# Start scanning
SCAN 0

# Scan all user keys
SCAN 0 MATCH user:*

# Scan product keys
SCAN 0 MATCH product:*

# Scan session keys
SCAN 0 MATCH session:*

# Scan with count hint
SCAN 0 MATCH user:* COUNT 10

# Continue scanning using returned cursor
SCAN <cursor> MATCH user:* COUNT 10

# Scan everything in chunks
SCAN 0 COUNT 100

# ----------------------------
# Combining patterns
# ----------------------------

# Users with single digit IDs
SCAN 0 MATCH user:[0-9]

# Products with IDs starting with 10
SCAN 0 MATCH product:10*

# Sessions beginning with "a"
SCAN 0 MATCH session:a*

# ----------------------------
# Cleanup
# ----------------------------

DEL user:1 user:2 user:3
DEL admin:1
DEL product:101 product:102
DEL session:abc session:def
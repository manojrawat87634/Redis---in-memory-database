# ============================
# 06_SETS_IN_REDIS
# ============================

# Create a set and add members
SADD fruits "apple"
SADD fruits "banana"
SADD fruits "mango"

# Add multiple members
SADD fruits "orange" "grapes" "kiwi"

# View all members
SMEMBERS fruits

# Check if member exists
SISMEMBER fruits "apple"

# Count members
SCARD fruits

# Remove a member
SREM fruits "banana"

# Remove multiple members
SREM fruits "orange" "kiwi"

# Pop a random member
SPOP fruits

# Pop multiple random members
SPOP fruits 2

# Get random member
SRANDMEMBER fruits

# Get multiple random members
SRANDMEMBER fruits 3

# Get random members (duplicates allowed)
SRANDMEMBER fruits -5

# Move member to another set
SMOVE fruits basket "apple"

# Difference between sets
SDIFF set1 set2

# Store difference into new set
SDIFFSTORE result set1 set2

# Intersection of sets
SINTER set1 set2

# Store intersection
SINTERSTORE result set1 set2

# Union of sets
SUNION set1 set2

# Store union
SUNIONSTORE result set1 set2

# Scan set incrementally
SSCAN fruits 0

# Scan with pattern
SSCAN fruits 0 MATCH a*

# Scan with count hint
SSCAN fruits 0 COUNT 5

# Check if key exists
EXISTS fruits

# Check type
TYPE fruits

# Delete set
DEL fruits
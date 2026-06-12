# ============================
# 07_SORTED_SETS_IN_REDIS
# ============================

# Create a sorted set
ZADD leaderboard 100 "Manoj"

# Add multiple members with scores
ZADD leaderboard 200 "Rahul" 150 "Amit" 300 "Priya"

# View all members (lowest to highest score)
ZRANGE leaderboard 0 -1

# View all members with scores
ZRANGE leaderboard 0 -1 WITHSCORES

# View highest to lowest
ZREVRANGE leaderboard 0 -1

# View highest to lowest with scores
ZREVRANGE leaderboard 0 -1 WITHSCORES

# Get score of a member
ZSCORE leaderboard "Manoj"

# Get rank (ascending)
ZRANK leaderboard "Manoj"

# Get rank (descending)
ZREVRANK leaderboard "Manoj"

# Count members
ZCARD leaderboard

# Count members within score range
ZCOUNT leaderboard 100 200

# Increment score
ZINCRBY leaderboard 50 "Manoj"

# Remove a member
ZREM leaderboard "Rahul"

# Remove multiple members
ZREM leaderboard "Rahul" "Amit"

# Remove by rank
ZREMRANGEBYRANK leaderboard 0 1

# Remove by score
ZREMRANGEBYSCORE leaderboard 0 100

# Get members by score
ZRANGEBYSCORE leaderboard 100 300

# Get members by score with scores
ZRANGEBYSCORE leaderboard 100 300 WITHSCORES

# Reverse score range
ZREVRANGEBYSCORE leaderboard 300 100

# Reverse score range with scores
ZREVRANGEBYSCORE leaderboard 300 100 WITHSCORES

# Get lexicographical range (same scores)
ZRANGEBYLEX names - +

# Remove lexicographical range
ZREMRANGEBYLEX names [a [m

# Scan sorted set
ZSCAN leaderboard 0

# Scan with pattern
ZSCAN leaderboard 0 MATCH M*

# Scan with count hint
ZSCAN leaderboard 0 COUNT 5

# Union of sorted sets
ZUNION 2 set1 set2

# Intersection of sorted sets
ZINTER 2 set1 set2

# Check key exists
EXISTS leaderboard

# Check type
TYPE leaderboard

# Delete sorted set
DEL leaderboard
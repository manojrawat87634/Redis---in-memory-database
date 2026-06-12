# ============================
# 05_LISTS_IN_REDIS
# ============================

# Create a list and push elements to the left
LPUSH fruits "apple"
LPUSH fruits "banana"
LPUSH fruits "mango"

# Push elements to the right
RPUSH fruits "orange"
RPUSH fruits "grapes"

# View entire list
LRANGE fruits 0 -1

# View first three elements
LRANGE fruits 0 2

# View last three elements
LRANGE fruits -3 -1

# Get element by index
LINDEX fruits 0
LINDEX fruits 2
LINDEX fruits -1

# Get length of list
LLEN fruits

# Pop from left
LPOP fruits

# Pop from right
RPOP fruits

# Pop multiple elements from left
LPOP fruits 2

# Pop multiple elements from right
RPOP fruits 2

# Push multiple values at once
LPUSH numbers 1 2 3 4 5
RPUSH letters A B C D E

# Insert before an existing value
LINSERT fruits BEFORE "apple" "kiwi"

# Insert after an existing value
LINSERT fruits AFTER "apple" "pear"

# Update value at specific index
LSET fruits 0 "watermelon"

# Remove elements by value
LREM fruits 1 "apple"

# Remove all matching values
LREM fruits 0 "apple"

# Remove from tail
LREM fruits -1 "apple"

# Trim list (keep only indexes 0 to 4)
LTRIM fruits 0 4

# Move element from one list to another
LMOVE source destination LEFT RIGHT

# Blocking move
BLMOVE source destination LEFT RIGHT 10

# Move last element to another list
RPOPLPUSH source destination

# Blocking pop from left
BLPOP queue1 queue2 5

# Blocking pop from right
BRPOP queue1 queue2 5

# Blocking move from source to destination
BRPOPLPUSH source destination 10

# Check if key exists
EXISTS fruits

# Check type
TYPE fruits

# Delete list
DEL fruits
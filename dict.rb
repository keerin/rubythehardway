module Dict
    def Dict.new(num_buckets=256)
    # Initializes a Dict with the given number of buckets.
        aDict = []
        (0...num_buckets).each do |i|
            aDict.push([])
        end

        return aDict
    end

    def Dict.hash_key(aDict, key)
    # Given a key, this will create a number and then convert it to an index for the aDict's buckets.
        return key.hash % aDict.length
    end

    def Dict.get_bucket(aDict, key)
        # Given a key, find the bucket where it would go.
        bucket_id = Dict.hash_key(aDict, key)
        return aDict[bucket_id]
    end

    def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
        bucket = Dict.get_bucket(aDict, key)

        bucket.each_with_index do |kv, i|
            k, v = kv
            if key == k
                return i, k, v
            end
        end

        return -1, key, default
    end

    def Dict.get(aDict, key, default=nil)
    # Gets the value in a bucket for the given key, or default.
        i, k, v = Dict.get_slot(aDict, key, default=default)
        return v
    end

    def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing any existing value.
        bucket = Dict.get_bucket(aDict, key)
        i, k, v = Dict.get_slot(aDict, key)

        if i >= 0
            bucket[i] = [key, value]
        else
            bucket.push([key, value])
        end
    end

    def Dict.delete(aDict, key)
    # Deletes the given key from the Dict.
        bucket = Dict.get_bucket(aDict, key)

        (0...bucket_length).each do |i|
            k, v = bucket[i]
            if key == k
                bucket.delete_at(i)
                break
            end
        end
    end

    def Dict.list(aDict)
    # prints out what's in the Dict.
        aDict.each do |bucket|
            if bucket
                bucket.each {|k, v| puts k, v}
            end
        end
    end
end

# This code is an array of buckets, which themselves are an array of slots containing key/value pairs.

# The data structure looks like this - aDict(bucket(slot(key/value)))

# So in the code above, we are converting a key to an integer, using the hash function to divide the hash by the number of buckets existing currently in aDict.

# This gives it a number to be used as an index (location) It does this by using the length of the key. Then we have code to try get this bucket from aDict array of buckets, then navigate THAT so we can find the slot containing the key we are looking for.

# aDict.length determines the number of buckets inside aDict

# get_bucket will use the hash key to find the bucket the key is in.

# get_slot will cycle through every possible slot until it finds a matching key (if key == k line of code)

# get will use get_slot to find a value

# set will allow you to set a key/value pair. It does this by first checking to see if it exists already, and if it doesn't, then it appends the k/v. If it already exists, it will replace what is already there.

# delete will look for the correct bucket then remove the k/v from it.

# list just iterates over everything and prints them all out.

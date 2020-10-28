# Redis Intro
<p>This is an intro to Redis.io in-memory database, key-value store, cache and message broker</p>

#

### Redis Common Commands
`INFO` command returns information and statistics about the server
`SET` <p>Set key to hold the string value</p>
`GET` <p>Get the value of key</p>
`BGSAVE` <p>Save the DB in background</p>
`SCAN` <p>iterates the set of keys in the currently selected Redis database.</p>
`HSET` <p>Sets `field` in the hash stored at key to value</p>
`HGET` <p>Returns the value associated with `field` in the hash stored at key</p>
`PING` <p>This command is often used to test a connection</p>
`KEYS` <p>Returns all keys matching pattern</p>
`BLPOP` <p>is a blocking list pop primitive</p>
`SUBSCRIBE` <p>Subscribes the client to the specified channels</p>
`PUBLISH` <p>Posts a message to the given channel</p>
</br>
<a href="https://redis.io/commands">Redis Commands</a> 

#

<h3>Redis Benchmark Utility</h3>
Redis includes the redis-benchmark utility that simulates running commands

try this command: `redis-benchmark -n 100`
</br>
<a href="https://redis.io/topics/benchmarks#how-fast-is-redis">How fast is Redis?</a> 

#

### Redis Configuration
Redis have a configuration file useally called redis.conf and it used to configure your redis nodes.
to alter redis.conf you'll need to restart the node after the change but it is also possiable to do it without restart using `CONFIG SET` and `CONFIG GET`
you'll have to update both the runtime and the redis.conf file to ensure changes will take effect after restart.
this is what redis.conf looks like:
`save 900 1`
`save 300 10`
to change on runtime example:
900 seconds if there is at least 1 change to the dataset, and after 300 seconds if there are at least 10 changes to the dataset.
`CONFIG SET SAVE "900 1 300 10"`
either way you need to update on both redis.conf and runtime nodes.
</br>
<a href="https://redis.io/topics/config">Redis Configuration</a> 

#

### Redis persistence
<strong>AOF </strong>logs every write operation received by the server, that will be played again at server statup.

<strong>RDB </strong>persistence performs point-in-time snapshots of your dataset at specified intervals.

to create a snapshot command at redis-cli: `SAVE`
to create a snapshot with intervals: `SAVE 60 1000`

that will save it every 60 seconds with at least 1000 keys changed.

snapshots are in file: dump.rdb
</br>
<strong>Append-only file </strong>every time Redis receives a command that change the dataset it will append to the AOF.
when Redis is restarted it will re-play the AOF to rebuild the state.
</br>
<strong>AOF Rewrite </strong>Redis is able to automatically rewrite the AOF in background when it gets too big.

if no rewrite of the log was performed in the meantime you can still save your data set just stopping the server, removing the latest command, and restarting Redis again.

AOF gets bigger and bigger as write operations are performed.

Redis is able to rebuild the AOF in the background without interrupting service to clients.

Whenever you issue a `BGREWRITEAOF` Redis will write the shortest sequence of commands needed to rebuild the current dataset in memory.
</br>
<a href="https://redis.io/topics/persistence">Redis Persistence</a>

#

### Redis cluster and Sentinel
Redis Sentinel will monitor your cluster and handle failovers of instances within the cluster.

To set up a Redis cluster you'll need at least 3 Redis instances in the cluster.

This is a good option for HA concerns.
Redis cluster splits your data across instances and provide automatic management and replication.

</br>
<a href="https://redis.io/topics/sentinel">Redis Sentinel</a> 

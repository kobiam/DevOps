<h1>Redis Intro</h1>
<p>This is an intro to Redis.io in-memory database, key-value store, cache and message broker</p>

#

<h3>Redis Common Commands</h3>
<p>```bash INFO``` command returns information and statistics about the server</p>
<p>```bash SET``` Set key to hold the string value</p>
<p>```bash GET``` Get the value of key</p>
<p>```bash BGSAVE``` Save the DB in background</p>
<p>```bash SCAN``` iterates the set of keys in the currently selected Redis database.</p>
<p>```bash HSET``` Sets ```field``` in the hash stored at key to value</p>
<p>```bash HGET``` Returns the value associated with ```field``` in the hash stored at key</p>
<p>```bash PING``` This command is often used to test a connection</p>
<p>```bash KEYS``` Returns all keys matching pattern</p>
<p>```bash BLPOP``` is a blocking list pop primitive</p>
<p>```bash SUBSCRIBE``` Subscribes the client to the specified channels</p>
<p>```bash PUBLISH``` Posts a message to the given channel</p>
</br>
<a href="https://redis.io/commands">Redis Commands</a> 

#

<h3>Redis Benchmark Utility</h3>
<p>Redis includes the redis-benchmark utility that simulates running commands</p>
<p>try this command: </p>```redis-benchmark -n 100```
</br>
<a href="https://redis.io/topics/benchmarks#how-fast-is-redis">How fast is Redis?</a> 

#

<h3>Redis Configuration</h3>
<p>Redis have a configuration file useally called redis.conf and it used to configure your redis nodes</p>
<p>to alter redis.conf you'll need to restart the node after the change but it is also possiable to do it without restart using ```CONFIG SET``` and ```CONFIG GET```</p>
<p>you'll have to update both the runtime and the redis.conf file to ensure changes will take effect after restart</p>
<p>this is what redis.conf looks like:</p>
```save 900 1```
```save 300 10```
<p>to change on runtime example:</p>
<p>900 seconds if there is at least 1 change to the dataset, and after 300 seconds if there are at least 10 changes to the dataset</p>
```CONFIG SET SAVE "900 1 300 10"```
<p>either way you need to update on both redis.conf and runtime nodes</p>
</br>
<a href="https://redis.io/topics/config">Redis Configuration</a> 

#

<h3>Redis persistence</h3>
<p><strong>AOF </strong>logs every write operation received by the server, that will be played again at server statup.</p>
</br>
<p><strong>RDB </strong>persistence performs point-in-time snapshots of your dataset at specified intervals.</p>
<p>to create a snapshot command at redis-cli:</p> ```SAVE```
<p>to create a snapshot with intervals:</p> ```SAVE 60 1000```
<p>that will save it every 60 seconds with at least 1000 keys changed</p>
<p>snapshots are in file: dump.rdb</p>
</br>
<p><strong>Append-only file </strong>every time Redis receives a command that change the dataset it will append to the AOF.</p>
<p>when Redis is restarted it will re-play the AOF to rebuild the state</p>
</br>
<p><strong>AOF Rewrite </strong>Redis is able to automatically rewrite the AOF in background when it gets too big.</p>
<p>if no rewrite of the log was performed in the meantime you can still save your data set just stopping the server, removing the latest command, and restarting Redis again</p>
<p>AOF gets bigger and bigger as write operations are performed.</p>
<p>Redis is able to rebuild the AOF in the background without interrupting service to clients.</p>
<p>Whenever you issue a ```BGREWRITEAOF``` Redis will write the shortest sequence of commands needed to rebuild the current dataset in memory.</p>
</br>
<a href="https://redis.io/topics/persistence">Redis Persistence</a>

#

<h3>Redis cluster and Sentinel</h3>
<p>Redis Sentinel will monitor your cluster and handle failovers of instances within the cluster.</p>
<p>To set up a Redis cluster you'll need at least 3 Redis instances in the cluster.</p>
<p>This is a good option for HA concerns.</p>
<p>Redis cluster splits your data across instances and provide automatic management and replication.</p>
</br>
<a href="https://redis.io/topics/sentinel">Redis Sentinel</a> 

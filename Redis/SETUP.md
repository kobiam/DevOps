<h1>Start Redis In Development</h1>

#

<p>To start the Redis nodes with replication:</p>
docker-compose up -d
<p>list the containers:</p>
docker ps
<p>connect to the nodes:</p>
docker exec -it [container-id] /bin/bash
<p>run the cli inside the container:</p>
redis-cli
<p>connect to the master from the cli node: (your IP may be diffrent)</p>
connect 172.19.0.2 6379

#
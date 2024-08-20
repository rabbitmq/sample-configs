{
  "permissions": [
    {
      "configure": ".*",
      "read": ".*",
      "user": "guest",
      "vhost": "/",
      "write": ".*"
    }
  ],
  "bindings": [],
  "queues": [
    {
      "arguments": {},
      "auto_delete": false,
      "durable": true,
      "name": "src-queue-" + x,
      "type": "quorum",
      "vhost": "/"
    },
    for x in std.range(1,100)
  ] + [
    {
      "arguments": {},
      "auto_delete": false,
      "durable": true,
      "name": "dst-queue-" + x,
      "type": "quorum",
      "vhost": "/"
    },
    for x in std.range(1,100)
  ],
  "parameters": [
    {
      "component": "shovel",
      "name": "my-shovel-" + x,
      "value": {
        "dest-protocol": "amqp10",
        "dest-queue": "/queues/dst-queue-" + x,
        "dest-uri": "amqp://localhost:5672",
        "src-protocol": "amqp10",
        "src-queue": "/queues/src-queue-" + x,
        "src-uri": "amqp://localhost:5672"
      },
      "vhost": "/"
    }
    for x in std.range(1,100)
  ],
  "policies": [],
  "rabbitmq_version": "3.13.0+rc.1.20.ge365a99",
  "users": [
    {
      "hashing_algorithm": "rabbit_password_hashing_sha256",
      "limits": {},
      "name": "guest",
      "password_hash": "5rB5BmXGUjdmWMF1qFQukV/AAVulChVYUmv/nKiQtr6wNiLo",
      "tags": [
        "administrator"
      ]
    }
  ],
  "rabbit_version": "3.13.0+rc.1.20.ge365a99",
  "exchanges": [],
  "topic_permissions": [],
  "vhosts": [
    {
      "limits": [],
      "metadata": {
        "description": "Default virtual host",
        "tags": []
      },
      "name": "/"
    }
  ],
  "global_parameters": []
}

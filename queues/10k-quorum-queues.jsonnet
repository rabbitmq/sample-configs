{
    "bindings": [
    ],
    "global_parameters": [ ],
    "parameters": [ ],
    "permissions": [
        {
            "configure": ".*",
            "read": ".*",
            "user": "guest",
            "vhost": "/",
            "write": ".*"
        }
    ],
    "policies": [ ],
    "queues": [
        {
            "arguments": {
                "x-queue-type": "quorum"
            },
            "auto_delete": false,
            "durable": true,
            "name": "qq" + x,
            "type": "quorum",
            "vhost": "/"
        }
        for x in std.range(1,10000)
    ],
    "rabbit_version": "3.8.10+1552.g167c0e9",
    "rabbitmq_version": "3.8.10+1552.g167c0e9",
    "topic_permissions": [ ],
    "users": [
        {
            "hashing_algorithm": "rabbit_password_hashing_sha256",
            "limits": { },
            "name": "guest",
            "password_hash": "uasGM6pRAIaNVacIzLNnf0U6JkoXO4f3NmqDzCJ6ua9DzIcc",
            "tags": [
                "administrator"
            ]
        }
    ],
    "vhosts": [
        {
            "limits": [ ],
            "metadata": {
                "description": "Default virtual host",
                "tags": [ ]
            },
            "name": "/"
        }
    ]
}

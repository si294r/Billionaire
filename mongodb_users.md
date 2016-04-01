#### Create User
```
alegrium:PRIMARY> db.createUser({
...    user: "admin",
...    pwd: "password",
...    roles: ["dbOwner"]
... })
Successfully added user: { "user" : "admin", "roles" : [ "dbOwner" ] }
```

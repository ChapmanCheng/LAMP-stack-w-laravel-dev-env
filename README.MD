# L.A.M.P. stack w/ Laravel development env

## Requirements

- docker
- php
- composer

## Installation

### **RUN**

```
cp mysql_env_example mysql_env;

composer create-project --prefer-dist laravel/laravel app [ "^7.0" ];

chmod --recursive 777 app/storage;

rm -rf app/vendor;

docker-compose up -d;
```

#### _then wait for composer to install dependencies inside the container_

### **_Feel free to modify the config for your own needs_**

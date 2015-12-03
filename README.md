# boot2docker-scripts
Useful scripts for boot2docker

##Preparing boot2docker VM
```
sudo chmod +x prepare.sh
sudo ./prepare.sh
```


##Scripts usage
###Mounting dirs
If you have made shared directory

           HOST       |         VM
--------------------- |--------------------- 
   C:/Users/myuser    | /opt/c/Users/myuser


You can force it to be mounted on every startup by:
```
sudo add_mount /opt/c/Users/myuser /mysuser
```

If you don't want to have this dir mounted any more, just remove proper line from
```
/var/lib/boot2docker/mounts
```

###Preparing containers templates
If you are tired of writing

```
docker create --name rabbit -p 15672:15672 -p 5672:5672 rabbitmq:3-management
```

every time you want to create rabbit container, just use:

```
sudo add_container rabbit "-p 15672:15672 -p 5672:5672 rabbitmq:3-management"
```

and then you can use:
```
create_rabbit
```
which will create docker container for you.

If want to edit command, all scripts are stored in
```
/var/lib/boot2docker/scripts/
```

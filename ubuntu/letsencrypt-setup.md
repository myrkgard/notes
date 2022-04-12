# Run fresh system to generate containers and volumes (keep it running!)
```docker-compose up -d```

# Find name of the container that contains the reverse proxy
- ```docker container ls```
- here: ea_eareverseproxy_1

# Get a terminal in the running container
- ```docker exec -it ea_eareverseproxy_1 sh```

# Make sure you're root
```whoami```

# Run certbot
- ```certbot --nginx```
- (answer some questions)

# Check if automatical renewal of certs works
- ```certbot renew --dry-run```

# Reload nginx's config (or simply restart the system)
- ```nginx -s reload```

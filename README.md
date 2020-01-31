# duplo-docker
Docker image for starting a duplo agent

# HOWTO

Make sure you have a OpenVPN configuration for your Duplo agent before start.

1. Paste your Agent configuration into into `client.opvpn`

1. Build a docker image

    `docker build -t duplo:0.1 .`
1. Run a newly build docker image
    
    `docker run --privileged duplo:0.1`

1. Done

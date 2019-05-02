## resumeyaml

This project is supposed to be used as a container who is serving a resume over a kubernetes cluster.

The file resume.yaml is my resume (It's easier to write it with yaml).

It's converted to json using yaml2json and it's being served in the port 4000 using resume-server(based in jsonresume) with the jsonresume-theme-elegant installed locally.

It's using CircleCI so any time a commit is performed, CircleCI created a new container and push it over hub.docker.com. You can see it here: https://hub.docker.com/r/klaudioz/resumeyaml

If the K8s cluster is on, this container should be running on: http://resume.claud.dev

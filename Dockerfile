FROM docker:18.09.0-dind

ADD drone-dockerhub-ecr /bin/
CMD "/bin/drone-dockerhub-ecr"
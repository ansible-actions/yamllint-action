# hadolint ignore=DL3007
FROM python:latest

LABEL "maintainer"="L3D <l3d@c3woc.de>"
LABEL "repository"="https://github.com/ansible-actions/yamllint-action.git"
LABEL "homepage"="https://github.com/ansible-actions/yamllint-action"

# hadolint ignore=DL3008,DL3013,SC1091
RUN pip3 install --no-cache-dir yamllint

COPY yaml_docker.py /yaml_docker.py
CMD [ "python", "/yaml_docker.py"]

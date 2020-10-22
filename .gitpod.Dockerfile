FROM gitpod/workspace-full
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb \
    && sudo dpkg -i /tmp/packages-microsoft-prod.deb \
    && sudo apt-get -q update \
    && sudo apt-get install -yq \
        dotnet-sdk-3.1 \
        mono-complete \
    && sudo rm -rf /var/lib/apt/lists/*
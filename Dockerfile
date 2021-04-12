FROM mcr.microsoft.com/dotnet/sdk:3.1

LABEL "maintainer"="Thomas Zwarts <thomas.zwarts@albelli.com>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

# wizardry for dotnet tools https://stackoverflow.com/questions/62217816/how-to-use-dotnet-tools-inside-a-container
# bug with dotnet-docker https://github.com/dotnet/dotnet-docker/issues/520
# ENV PATH="${PATH}:/root/.dotnet/tools"


#
#RUN apt-get update -y && \ 
     #apt-get install --no-install-recommends gnupg curl ca-certificates apt-transport-https -y && \
      #curl -sSfL https://apt.octopus.com/public.key |  apt-key add - && \
       #sh -c "echo deb https://apt.octopus.com/ stable main > /etc/apt/sources.list.d/octopus.com.list" && \
       #apt-get update -y && apt install octopuscli=7.4.3124 -y
#
#RUN octo --help

FROM hashicorp/terraform:light

# Azure cli in apline doesn't have an installation package (at the time of writing) but
# is installable via pip.
RUN apk add --update make bash py-pip
RUN apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev
RUN pip install azure-cli
RUN apk del --purge build

ADD ./bin       /tfscaffold/bin
ADD ./bootstrap /tfscaffold/bootstrap
RUN mkdir       /tfscaffold/components
RUN mkdir       /tfscaffold/etc
ADD ./lib       /tfscaffold/lib
RUN mkdir       /tfscaffold/modules
RUN mkdir       /tfscaffold/plugin-cache

WORKDIR /tfscaffold
RUN chmod a+rwx ./bin/terraform-az.sh

ENTRYPOINT [ "./bin/terraform-az.sh" ]
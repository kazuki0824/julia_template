FROM julia:latest

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    apt-get -yq install build-essential git

RUN git config --global user.name maleicacid

RUN git config --global user.email maleicacid824@gmail.com

RUN git config --global github.user kazuki0824

RUN julia -e 'ENV["CONDA_JL_VERSION"]=3; using Pkg; Pkg.add(["PyCall", "PyPlot"])'
RUN julia -e 'using Pkg; Pkg.add(["PkgTemplates", "DocumenterTools"])'
RUN julia -e 'ENV["PYTHON"]=""; using Pkg; Pkg.add("Conda"); Pkg.update(); Pkg.build("PyCall"); using PyPlot '

MAINTAINER maleicacid


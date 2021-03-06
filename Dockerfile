FROM nfcore/base:1.7
LABEL authors="Sam Hao" \
      description="Docker image containing all requirements for nf-core/abricate pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-abricate-1.0dev/bin:$PATH

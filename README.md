# docker-uproc

To build a Docker image:

* Build uproc with "./configure --prefix `pwd` && make install" such that you 
  will have dirs for "lib," "bin," "shared," and "include" here

* docker build -t uproc .

To run

    $ docker run --rm -v ~/data:/data -w /data uproc uproc-dna

    $ docker run --rm -v /usr/local/imicrobe/data/uproc:/data 
      -v ~/data:/work -w /work uproc uproc-dna /data/uproc/kegg \
      /data/uproc/model /work/prodigal.nuc -o uproc-dna-out

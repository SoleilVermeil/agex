# SAJEx (Smoothened Armchair Graphene Nanoribbon Junctions Explorer)

**SAJEx** is a simple interface that let you explore a large variety of armchair graphene nanoribbon junctions.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/SoleilVermeil/sajex/main?urlpath=%2Fvoila%2Frender%2FSAJEx.ipynb)

## Usage

### Run locally

1. Make sure the following are installed:
* `voila >= 0.4.0`
* `ipywidgets >= 8.0.6`
* `voila-materialscloud-template`. **The following might downgrade voila !**
2. Run `voila --template=materialscloud-tool ajex.ipynb` or `sh voila.sh`.

### Use Dockerfile

1. Build the docker image using `docker build -t sajex .`.
2. Retrieve the docker image using `docker save -o sajex.tar sajex`.
3. Create a docker container. Add the path `/data` that points to the `data/` folder.
4. Run the docker container using `docker run -p 8866:8866 sajex`.
5. Access it on `localhost:8866` **although the console might indicate another address**.

## How to cite

If you use this tool, please cite the following works:

* **J. Leuenberger, K. Čerņevičs, O. V. Yazyev, Optimizing Graphene-Based Nanoelectronics via Junction Edge Characterization**
* **J. Leuenberger, K. Čerņevičs, O. V. Yazyev, Smoothed Armchair Graphene Nanoribbon Junctions Explorer (SAJEx)**

You can also use the following BibTeX citation.

```bibtex
@article{Leu23_1,
  author = {Leuenberger, Julien and Čerņevičs, Kristiāns and Yazyev, Oleg V.},
  title = {Optimizing Graphene-Based Nanoelectronics via Junction Edge Characterization},
  volume = {tbd},
  journal = {tbd},
  doi = {tbd},
}

@misc{Leu23_2,
  author = {Leuenberger, Julien and Čerņevičs, Kristiāns and Yazyev, Oleg V.},
  title = {Smoothed Armchair Graphene Nanoribbon Junctions Explorer (SAJEx)},
  url = {https://github.com/SoleilVermeil/ajex},
  organization = {tbd},
  doi = {tbd},
}
```
## License

MIT. The terms of the license can be found in the [LICENSE](LICENSE) file.

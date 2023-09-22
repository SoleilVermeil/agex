# SAJEx (Smoothened Armchair Graphene Nanoribbon Junctions Explorer)

**SAJEx** is a simple interface that let you explore a large variety of armchair graphene nanoribbon junctions.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/SoleilVermeil/sajex/main?urlpath=%2Fvoila%2Frender%2FSAJEx.ipynb)

## Usage

### Running locally

1. Make sure the following are installed (for example using `pip install -r requirements.txt`):
* `voila >= 0.4.0`
* `ipywidgets >= 8.0.6`
* `voila-materialscloud-template`. **The following might downgrade voila !**
2. Run the app using `voila --template=materialscloud-tool SAJEx.ipynb`.

### Using Dockerfile

1. Build the docker image using `docker build -t sajex .`.
2. Retrieve the docker image using `docker save -o SAJEx.tar sajex`.
3. Run the docker container using `docker run -p 8866:8866 sajex`. Note that on the first run, the container will download the dataset, and might thus take a while.
4. Access it on `<host ip>:8866` **although the console might indicate another address**.

## How to cite

If you use this tool, please cite the following works:

* **J. Leuenberger, K. Čerņevičs, O. V. Yazyev, Optimizing Nanoelectronics Footprint by Rounding Graphene Nanoribbon Junctions, tbd**
* J. Leuenberger, K. Čerņevičs, O. V. Yazyev, Simple angled graphene nanoribbon junctions dataset, Materials Cloud Archive **2023.X** (2023), doi:10.24435/materialscloud:jx-02

You can also use the following BibTeX citation.

```bibtex
@article{Leu23_1,
  author = {Leuenberger, Julien and Čerņevičs, Kristiāns and Yazyev, Oleg V.},
  title = {Optimizing Nanoelectronics Footprint by Rounding Graphene Nanoribbon Junctions},
  volume = {tbd},
  journal = {tbd},
}

@misc{Leu23_2,
  author = {Leuenberger, Julien and Čerņevičs, Kristiāns and Yazyev, Oleg V.},
  title = {Simple angled graphene nanoribbon junctions dataset},
  url = {https://doi.org/10.24435/materialscloud:jx-02},
  organization = {Materials Cloud Archive},
  note = {doi:10.24435/materialscloud:jx-02},
}
```
## License

MIT. The terms of the license can be found in the [LICENSE](LICENSE) file.

========================
Dataset folder structure
========================

* armchair/
  * N=20/
    * wext=0/
      * <files>
    * wext=1/
    * wext=2/
    * ...
  * N=23/
  * N=26/
  * ...
  * N=80/
* round/
* zigzag/

=================
Dataset structure
=================

"summary.json"
--------------
* "shape": a string either "armchair", "zigzag" or "round".
* "N": an integer between 20 and 80, corresponding to the width of the GNRs.
* "wext": an integer corresponding to the smoothening parameter.
* "tau_around_0p00_ev": a float corresponding to the preserved conductance in [G_0] at 0.00 eV.
* "tau_around_0p01_ev": a float corresponding to the preserved conductance in [G_0] averaged within a 0.01 eV window around 0.00 eV.
* "tau_around_0p10_ev": a float corresponding to the preserved conductance in [G_0] averaged within a 0.10 eV window around 0.00 eV.
* "edge_length": an integer corresponding to the total length of the junction's edges.
* "edge_sequence": a string made of "A"s, "Z"s and "X"s, corresponding to the edge structure.
* "armchair_ratio": a float corresponding to the ratio of armchair edges in the edge.
* "zigzag_ratio": a float corresponding to the ratio of zigzag edges in the edge.
* "other_ratio": a float corresponding to the ratio of other types of edges in the edge.

"conductance.csv"
-----------------
* "energy": a list of floats between -0.1 and 0.1, corresponding to energies in [eV].
* "conductance_lead": a list of floats, corresponding to the conductance in [G_0] of the leads at the corresponding energies.
* "conductance_junction": a list of floats, corresponding to the conductance in [G_0] of the junction at the corresponding energies.

"vertices.csv"
--------------
* "vertex_index": a list of integers, corresponding to the indices of the vertices. Note that these indices are related to the ones in the file **Edges**.
* "vertex_x": a list of floats, corresponding to the x positions of the vertices in [sqrt(3)a].
* "vertex_y": a list of floats, corresponding to the y positions of the vertices in [a].
* "ldos": a list of floats, corresponding to the local density of states at the given vertices.

"edges.csv"
-----------
* "edge_index": a list of integers, corresponding to the indices of the edges
* "vertex_1_index": a list of integers, corresponding to the indices of the first vertex of the edges
* "vertex_2_index": a list of integers, corresponding to the indices of the second vertex of the  edges
* "current": a list of floats, corresponding to the probability current in [G_0] flowing through the edges. Note that if the current is negative, it means that the current is flowing from vertex 2 to vertex 1.

"outline.png"
-------------
* highlights the junction's outer edge in red or blue depending on if they are classified as "armchair vertices" or "zigzag vertices", respectively.

"conductance.png"
-----------------
* shows the transmission, where the transmission of the junction (red solid line) is plotted as a function of the energy. As a comparison, the transmission of the corresponding straight GNR (black dashed line) is also plotted.

"ldos.png"
----------
* shows the local density of states (LDOS), where the circles' colors depend on the sublattice on which they are.

"current.png"
-------------
* shows the probability density current plot. Note that for readability, only flows greater or equal to one tenth of the maximum flow are shown.
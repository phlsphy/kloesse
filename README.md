# Kloesse

Inputs:
* Total page extent
* Front matter page count

Outputs:
* Number of blank pages added (to make it divisble by 4).
* Two columns of imposition, broken into block of 32 pages.
* Preferably in a printable format (PDF?).

To do:
* Output HTML at /new/page=blablabla. See result.html.eex. Rendering as unicode characters instead of list of numbers. 
* Works if piped as JSON. Might need parser.
* A unique header to Kloesse. 
* A standard footer.

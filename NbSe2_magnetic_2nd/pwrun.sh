#!/bin/bash

for i in {001..003};
do 
  cat header.in supercell-$i.in > NbSe2-$i.in;
  #mpirun -np 4 pw.x <kk-$i.in> kk-$i.out;
done


#!/bin/bash

for i in {00001..00256};
do 
  cat header.in supercell-$i.in > NbSe2-$i.in;
  mpirun -np 18 pw.x <kk-$i.in> kk-$i.out;
done


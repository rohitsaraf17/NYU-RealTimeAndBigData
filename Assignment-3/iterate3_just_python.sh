#!/bin/bash

python map.py input.txt | \
	sort | 	\
	python reduce.py |
	\
python map.py  | \
	sort | \
	python reduce.py | \
python map.py  | \
	sort | \
	python reduce.py > out_non_mapredue_3iter.txt


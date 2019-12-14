#!/bin/bash
for i in $( ls | grep [A-Z] ); do mv $i `echo $i | tr [:upper:] [:lower:]`; done
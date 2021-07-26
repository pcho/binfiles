#!/usr/bin/env bash

for i in *; do
    cd $HOME/${i} && gh repo create ${i} --description "🗄 [Archive] ${i}" --private --confirm && git push -u origin master && cd $HOME
done
wait

#!/bin/bash


function folder_maker{

  i=0
  
  while (true); do mkdir dir$i; ((i++)); done
}

function folder_destoryer{

  i=0
  while (true); do rm -rf dir$i; ((i++)); done
}

folder_maker

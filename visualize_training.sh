#!/bin/sh
# Visdom option 
  --visenv %s, -venv %s the visdom environment name
  --viswin %s, -vwin %s the title of the plot window
  --visport %d, -vp %d the port where the visdom server is running(default: 9333)
  --vishost %s, -vh %s the hostname where the visdom server is running(default: localhost)

# Append these options to the previous training command
  -vp 9333 -vh 'localhost' -venv 'PoseNet-Cambridge' -vwin 'nobeta.shop.lr5e-3_wd1e-4_sx0.0_sq-3.0'

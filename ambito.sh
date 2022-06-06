#!/bin/bash
echo "PATH antes de cambiar: $PATH"
export PATH=$PATH:/home/user/bin:/home/user/bin/subdir
echo "PATH después de cambiar: $PATH"
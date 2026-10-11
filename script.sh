#!/usr/bin/env bash

# print full name 
name="Usman"
echo "Hello, my name is ${name}"
printf '\n'


counter=1 # iteration count
loop=3 # loop count

# looping with while loop
while [ "${counter}" -le "${loop}" ]; do
  echo "----------------Iteration #$counter----------------"
  printf '\n'

  # print memory usage
  echo "Ukuran memori sistem (MB):"
  free --mega
  printf '\n'
  sleep 1

  # print disk usage
  echo "Penggunaan ruang disk pada filesystem (GB):"
  df --block-size=GB
  printf '\n'
  sleep 1

  # print disk usage without tmpfs
  echo "Filesystem dan persentase penggunaan disk (tanpa tmpfs):"
  df -x tmpfs --output=source,pcent
  printf '\n'
  sleep 1

  # increment iteration count
  counter=$((counter + 1))
done

#!/usr/bin/env bash

# print full name 
name="Usman"
echo "Hello, my name is ${name}"
printf '\n'


count=1 # iteration count
loop=3 # loop count

# looping with while loop
while [ "${count}" -le "${loop}" ]; do
  echo "----------------Iteration #$count----------------"
  printf '\n'

  # print memory usage
  echo "Ukuran memori sistem (MB):"
  free -m
  printf '\n'
  sleep 1

  # print disk usage
  echo "Penggunaan ruang disk pada filesystem (GB):"
  df -BG
  printf '\n'
  sleep 1

  # print disk usage without tmpfs
  echo "Filesystem dan persentase penggunaan disk (tanpa tmpfs):"
  df -x tmpfs --output=source,pcent
  printf '\n'
  sleep 1

  # increment iteration count
  count=$((count + 1))
done

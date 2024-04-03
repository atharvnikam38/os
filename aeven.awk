#!/usr/bin/awk -f
BEGIN {
 start = ARGV[1]
 end = ARGV[2]
 delete ARGV[1]
 delete ARGV[2]
 for (i=start; i<=end; i++) {
 if (i % 2 == 0) {
 print i
 }
 }
}

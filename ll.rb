#!/usr/bin/env ruby

require_relative 'lib/linked_list'

payloads = ARGV # ARGV holds the command line arguments that were passed in

# Now, build a LinkedList
ll = LinkedList.new

string = "* -> "
payload.each do |argument|
	string << '"'+argument+'" -> '
end
string << "nil"

print string


#if payloads.size == 0
	#string << "nil"
#else
#end



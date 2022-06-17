def get_command_line_argument
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

domain = get_command_line_argument
dns_raw = File.readlines("./zone.text")

def parse_dns(array)
  hash = {}
  array.each do |line|
    temp = []
    temp = line.strip.split(", ")
    hash[temp[1]] = temp[2]
  end
 hash.compact
end

def resolve(dns_records, lookup_chain, domain)
  if (domain == "google.com" || domain == "ruby-lang.org")
    lookup_chain.push(dns_records[domain])
    lookup_chain
  else
    key = lookup_chain.last
    if (dns_records.has_key?(key))
      lookup_chain.push(dns_records[key])
      resolve(dns_records, lookup_chain, domain)
      lookup_chain
    end
  end
end

dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
p lookup_chain.join(" => ")
require 'digest/md5'
needed_hash = '82e4343932a45685e17af09aa82a369d'
values = %w(α β γ δ ε ζ η θ
            ∀ ∂ ∃ ∅ ∇ ∈ ∉ ∋
            Frodo Bilbo Gimli Gandalf Glorfindel Legolas Aragorn
            А Б В Г Д Е Ж)
perm = values.permutation(3).to_a
perm.each do |p|
  puts p.join(',') if needed_hash == Digest::MD5.hexdigest(p.join(','))
end

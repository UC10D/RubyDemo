
require 'jwt'
def login
  puts '---------login action---------'

  key = 'fcc465fa29672eaa06f4361830f20dce62d22f90802355eae901bbe02a026d59fe46ece07a4f6c8a889a0e176ae6ea7c012e452ac4dcaf6cd431da00fffc9c99'
  puts key
  payload = 'show me the money'
  token = JWT.encode(payload, key, 'HS256')
  puts token
  res = JWT.decode(token, key, true, algorithm: 'HS256')[0]
  puts res
end

login

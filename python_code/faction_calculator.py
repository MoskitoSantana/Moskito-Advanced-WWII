def faction(a,b,c): return a*b+c

print("USA:PARATROOPERS")
print(hex(faction(0x110,0x220,0x330))) # EUROPE
print(hex(faction(0x110,0x220,0x331))) # AFRIKA
print(hex(faction(0x110,0x220,0x332))) # WINTER

print("USA:ARMY")
print(hex(faction(0x110,0x221,0x330))) # EUROPE
print(hex(faction(0x110,0x221,0x331))) # AFRIKA
print(hex(faction(0x110,0x221,0x332))) # WINTER

print("USA:MARINES")
print(hex(faction(0x110,0x222,0x330))) # EUROPE
print(hex(faction(0x110,0x222,0x331))) # AFRIKA
print(hex(faction(0x110,0x222,0x332))) # WINTER

# ============================================================================= 

print("GER:PARATROOPERS")
print(hex(faction(0x485,0x220,0x330))) # EUROPE
print(hex(faction(0x485,0x220,0x331))) # AFRIKA
print(hex(faction(0x485,0x220,0x332))) # WINTER

print("GER:ARMY")
print(hex(faction(0x485,0x221,0x330))) # EUROPE
print(hex(faction(0x485,0x221,0x331))) # AFRIKA
print(hex(faction(0x485,0x221,0x332))) # WINTER

print("GER:MARINES")
print(hex(faction(0x485,0x222,0x330))) # EUROPE
print(hex(faction(0x485,0x222,0x331))) # AFRIKA
print(hex(faction(0x485,0x222,0x332))) # WINTER
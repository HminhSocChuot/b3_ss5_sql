

-- du lieu dau vao (input):
-- min_trust_score: diem tin nhiem toi thieu (lay tu cau hinh he thong)
-- restaurant_location: toa do quan an (de tinh distance_km)

-- if min_trust_score < 0:
--   gan mac dinh min_trust_score = 0
--   hoac tra ve loi "cau hinh diem tin nhiem khong hop le"

-- if min_trust_score > 100:
--   gan mac dinh min_trust_score = 100


select driver_id, driver_name, status, trust_score, distance_km
from drivers
where status = 'available'
  and trust_score >= 80 
order by 
    distance_km asc,  
    trust_score desc;
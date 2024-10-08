# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# programs = Program.create([
#     {name: "Worship Leader Training", description: "- Curriculum covering leadership skills, theological understanding, song selection, and spiritual formation. - Practical workshops and mentoring sessions to develop practical skills and spiritual maturity.", image_url: "https://media.istockphoto.com/id/172730717/photo/singer-silhouette.jpg?s=612x612&w=0&k=20&c=2rTjofRZ4mBgxSx7XawTp0I5zosiMupWNKlGlR_bCQ0="},
#     {name: "Backup Vocalist Recruitment & Training", description: "- Recruitment efforts targeting individuals with a passion for singing and a desire to serve in worship ministry. - Training curriculum covering vocal technique, harmonization, spiritual formation, and teamwork principles.", image_url: "https://media.istockphoto.com/id/1152043152/photo/one-man-rock-musician-singing-tensely-on-a-microphone.jpg?s=612x612&w=0&k=20&c=SXoJJ-LqVZqx0BaKXGMHw4OVPPo52-iJi7J0sOqRRTw="},
#     {name: "Media Volunteer Training", description: "- Training in media production, presentation software, and visual storytelling techniques. - Instruction on capturing and conveying the worship experience through video, graphics, and stage design.", image_url: "https://media.istockphoto.com/id/1191264566/photo/video-camera-with-touchscreen.jpg?s=612x612&w=0&k=20&c=pZz2qaEgvZTopIVsdRuhLhBOjgW4mgNIiHhLf0JImNw="},
#     {name: "Sound Engineering", description: "- Hands-on experience and mentorship opportunities to enhance musicianship and sound quality.", image_url: "https://media.istockphoto.com/id/1384233241/photo/sound-recording-studio-mixing-desk-with-engineer-or-music-producer.jpg?s=612x612&w=0&k=20&c=SK0n5Cv3Pfb9FRfMtA-lJGTR_sO5T9BIcznnargPlB0="},
#     {name: "Instrumentalists", description: "- Specialized instruction in musical proficiency, technical skills, and audio engineering techniques.", image_url: "https://media.istockphoto.com/id/1480868840/photo/rocking-to-the-beat-silhouettes-on-stage.jpg?s=612x612&w=0&k=20&c=VgU7cTJ2B9LM_Gn4vhMx3rfXH9w0B_lSNr1Ag6xCSy4=",
#      categories_attributes: [
#         {name: "Solo Guitar", description: "Practical instructions Learning aimed to play scales and identifying where each note falls on the fretboard", image_url: "https://media.istockphoto.com/id/1371047758/photo/indie-rock-guitarist-playing-guitar-in-a-live-show-with-stage-lights.jpg?s=612x612&w=0&k=20&c=A-FuVENICxkZTvwBEMf07pMewZQ2eLKujutKbnXPogU="},
#         {name: "Bass Guitar", description: "Practical Learning with a focus on the bass guitar.", image_url: 'https://media.istockphoto.com/id/651209608/photo/close-up-photo-of-bass-guitar-player.jpg?s=612x612&w=0&k=20&c=IFJb9cCK_ODOrdYXd1_3Y_aoXwi0oimAAXfsmwen4Y4='},
#         {name: "Drummer", description: "The Program is  designed to build your skills and techniques, enabling you to become a great drummer over a short period of time.", image_url: 'https://media.istockphoto.com/id/1400528967/photo/cropped-image-of-a-musician-playing-drum-set-on-the-stage.jpg?s=612x612&w=0&k=20&c=zfjaEdWQXn75QMZafL9E6yw0VV7RPf2DF7f8b0I7Azo=' },
#         {name: "Keyboardist", description: "The program equips learners with crucial guideline in playing the keyboard.", image_url: "https://media.istockphoto.com/id/1207522788/photo/musicians-are-playing-music-on-a-stage.jpg?s=612x612&w=0&k=20&c=3SNSorjkioCPIdDxjwS1w7SqDQkPEAJeiELnwgCyjvs="},

#     ]}])


# teams = Team.create([
#     {fullname: "", title: "Executive Director", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668679/executive-director_wdb6qt.jpg')},
#     {fullname: "", title: "Associate Director", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668158/baraka_oqgrth.jpg')},
#     {fullname: "", title: "Ass.Financial Administrator", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668158/entrust_financial_administartor_w0pr4l.jpg')},
#     {fullname: "", title: "Administrator", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668158/entrust_administrator_r3dxck.jpg')},
#     {fullname: "", title: "Enrollment Cordinator", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668158/enroll_cordinator_iednhm.jpg')},
#     {fullname: "", title: "Media Cordinator", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668158/media_rikxjb.jpg')},
#     {fullname: "", title: "Events Director", image: ('https://res.cloudinary.com/dqvb49fnb/image/upload/v1723668158/entrust_events_director_whp6oh.jpg')},
# ])
# if Rails.env.development? || Rails.env.staging?

#     product = Product.destroy_all

#     tshirt_listing = Listing.find_or_create_by(name: "T-shirts")

#     product = tshirt_listing.products.find_or_create_by(
#         name: "Basic T-shirt", 
#         description: 'A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.',
#         price: 850
#     )

#     [
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379944/entrust_white_t_o4fgaz.jpg", color: "#FFFFFF", size: "S", quantity: "20", weight: "", price: 850},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379945/entrust_blue_t_qtybna.jpg", color: "#4793AF", size: "S", quantity: "20", weight: "", price: 850},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379945/entrust_red_t_j0iypz.jpg", color: "#E72929", size: "S", quantity: "20", weight: "", price: 850},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379943/entrust_mustard_t_cw1xor.jpg", color: "#FABC3F", size: "S", quantity: "20", weight: "", price: 850},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379940/enrtust_gray_t_emxhph.jpg", color: "#31363F", size: "S", quantity: "20", weight: "", price: 850},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379946/enrust_jungle_t_gjirez.jpg", color: "#A28B55", size: "S", quantity: "20", weight: "", price: 850},
#     ].each do |variant_attrs|
#         product.variants.find_or_create_by(variant_attrs)
#     end

#     hoodies_listing = Listing.find_or_create_by(name: "Hoodies")

#     product = hoodies_listing.products.find_or_create_by(
#         name: "Classic Hoodie", 
#         description: 'A classic cotton Hoodie made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.',
#         price: 2500
#     )

#     [
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379944/entrust_mustard_hoodie_jrnioq.jpg", color: "#FFB200", size: "XL", quantity: "20", weight: "", price: 2500},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379941/entrust_black_hoodie_f6pp7i.jpg", color: "#151515", size: "M", quantity: "20", weight: "", price: 2500},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379944/entrust_mustard_hoodie_jrnioq.jpg", color: "#FFB200", size: "S", quantity: "20", weight: "", price: 2500},
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379941/entrust_black_hoodie_f6pp7i.jpg", color: "#151515", size: "L", quantity: "20", weight: "", price: 2500},
#     ].each do |variant_attrs|
#         product.variants.find_or_create_by(variant_attrs)
#     end

#     mugs_listing = Listing.find_or_create_by(name: "Mugs")

#     product = mugs_listing.products.find_or_create_by(
#         name: "Beautiful Mugs", 
#         description: 'A beautiful Mug branded with the entrust initiative logo',
#         price: 350
#     )
#     [
#         {image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379943/enrtust_mug_uvchrm.jpg", color: "#151515", size: "Normal", quantity: "20", weight: "", price: 350},
#     ].each do |variant_attrs|
#         product.variants.find_or_create_by(variant_attrs)
#     end
# end


tshirt_listing = Listing.find_or_create_by(name: "T-shirts")

tshirt_listing.products.create([
  { name: "Basic T-shirt - White", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379944/entrust_white_t_o4fgaz.jpg", description: "A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.",color: "#FFFFFF", size: "S", quantity: 20, price: 850 },
  { name: "Basic T-shirt - Blue", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379945/entrust_blue_t_qtybna.jpg", description: "A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.",color: "#4793AF", size: "S", quantity: 20, price: 850 },
  { name: "Basic T-shirt - Red", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379945/entrust_red_t_j0iypz.jpg", description: "A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.",color: "#E72929", size: "L", quantity: 20, price: 850 },
  { name: "Basic T-shirt - Mustard", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379943/entrust_mustard_t_cw1xor.jpg", description: "A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.",color: "#FABC3F", size: "M", quantity: 20, price: 850 },
  { name: "Basic T-shirt - Gray", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379940/enrtust_gray_t_emxhph.jpg", description: "A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.",color: "#31363F", size: "XL", quantity: 20, price: 850 },
  { name: "Basic T-shirt - Jungle", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379946/enrust_jungle_t_gjirez.jpg", description: "A basic cotton t-shirt made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.",color: "#A28B55", size: "XXL", quantity: 20, price: 850 }
])


hoodies_listing = Listing.find_or_create_by(name: "Hoodies")

hoodies_listing.products.create([
  { name: "Classic Hoodie - Mustard", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379944/entrust_mustard_hoodie_jrnioq.jpg", description: "A classic cotton Hoodie made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.", color: "#FFB200", size: "XL", quantity: 20, price: 2500 },
  { name: "Classic Hoodie - Black", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379941/entrust_black_hoodie_f6pp7i.jpg", description: "A classic cotton Hoodie made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.", color: "#151515", size: "M", quantity: 20, price: 2500 },
  { name: "Classic Hoodie - Mustard", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379944/entrust_mustard_hoodie_jrnioq.jpg", description: "A classic cotton Hoodie made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.", color: "#FFB200", size: "S", quantity: 20, price: 2500 },
  { name: "Classic Hoodie - Black", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379941/entrust_black_hoodie_f6pp7i.jpg", description: "A classic cotton Hoodie made from a crisp, medium-weight 100% cotton and designed for a tailored, yet comfortable fit. The classic neck rib includes a touch of lycra to retain its shape over time. Branded with the entrust initiative logo on the front.", color: "#151515", size: "L", quantity: 20, price: 2500 }
])

# Mugs (one product for each color)
mugs_listing = Listing.find_or_create_by(name: "Mugs")

mugs_listing.products.create([
  { name: "Beautiful Mug - Black", image_url: "https://res.cloudinary.com/dqvb49fnb/image/upload/v1725379943/enrtust_mug_uvchrm.jpg", description: "A beautiful Mug branded with the entrust initiative logo", color: "#151515", size: "Normal", quantity: 20, price: 350 }
])



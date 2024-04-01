AdminUser.destroy_all
CaseFan.destroy_all
Case.destroy_all
ComputerMonitor.destroy_all
Cpu.destroy_all
Customer.destroy_all
Keyboard.destroy_all
Motherboard.destroy_all
Mouse.destroy_all
OpticalDrive.destroy_all
Order.destroy_all
Orderproduct.destroy_all
Powersupply.destroy_all
Ram.destroy_all
Speaker.destroy_all
ThermalPaste.destroy_all
Videocard.destroy_all
Webcam.destroy_all

casefanfile = Rails.root.join("db/case-fan.csv")
casefile = Rails.root.join("db/case.csv")
cpufile = Rails.root.join("db/cpu.csv")
keyboardfile = Rails.root.join("db/keyboard.csv")
memoryfile = Rails.root.join("db/memory.csv")
monitorfile = Rails.root.join("db/monitor.csv")
motherboardfile = Rails.root.join("db/motherboard.csv")
mousefile = Rails.root.join("db/mouse.csv")
opticaldrivefile = Rails.root.join("db/optical-drive.csv")
powersupplyfile = Rails.root.join("db/power-supply.csv")
speakerfile = Rails.root.join("db/speakers.csv")
thermalpastefile = Rails.root.join("db/thermal-paste.csv")
videocardfile = Rails.root.join("db/video-card.csv")
webcamfile = Rails.root.join("db/webcam.csv")

csv_casefan = File.read(casefanfile)
csv_case = File.read(casefile)
csv_cpu = File.read(cpufile)
csv_keyboard = File.read(keyboardfile)
csv_memory = File.read(memoryfile)
csv_monitor = File.read(monitorfile)
csv_motherboard = File.read(motherboardfile)
csv_mouse = File.read(mousefile)
csv_opticaldrive = File.read(opticaldrivefile)
csv_powersupply = File.read(powersupplyfile)
csv_speaker = File.read(speakerfile)
csv_thermalpaste = File.read(thermalpastefile)
csv_videocard = File.read(videocardfile)
csv_webcam = File.read(webcamfile)

casefans = CSV.parse(csv_casefan, headers: true, encoding: "utf-8")
cases = CSV.parse(csv_case, headers: true, encoding: "utf-8")
cpus = CSV.parse(csv_cpu, headers: true, encoding: "utf-8")
keyboards = CSV.parse(csv_keyboard, headers: true, encoding: "utf-8")
memory = CSV.parse(csv_memory, headers: true, encoding: "utf-8")
monitors = CSV.parse(csv_monitor, headers: true, encoding: "utf-8")
motherboards = CSV.parse(csv_motherboard, headers: true, encoding: "utf-8")
mouses = CSV.parse(csv_mouse, headers: true, encoding: "utf-8")
opticaldrives = CSV.parse(csv_opticaldrive, headers: true, encoding: "utf-8")
powersupplies  = CSV.parse(csv_powersupply, headers: true, encoding: "utf-8")
speakers = CSV.parse(csv_speaker, headers: true, encoding: "utf-8")
thermalpastes = CSV.parse(csv_thermalpaste, headers: true, encoding: "utf-8")
videocards = CSV.parse(csv_videocard, headers: true, encoding: "utf-8")
webcams = CSV.parse(csv_webcam, headers: true, encoding: "utf-8")

categories = ['Case Fans', 'Cases', 'CPUs', 'Keyboards', 'Memory', 'Monitors', 'Motherboards', 'Mouses', 'Optical Drives', 'Power Supplies', 'Speakers', 'Thermal Pastes', 'Video Cards', 'Webcams']

categories.each do |c|
  Category.find_or_create_by(
    name: c
  )
end

casefans.each do |c|
  casefan = CaseFan.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    size:                 c['size'],
    color:                c['color'],
    rpm:                  c['rpm'],
    pwm:                  c['pwm'],
    category_id:          1
  )
end

cases.each do |c|
  singlecase = Case.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    casetype:             c['type'],
    color:                c['color'],
    psu:                  c['psu'],
    side_panel:           c['side_panel'],
    category_id:          2
  )
end

cpus.each do |c|
  cpu = Cpu.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    core_count:           c['core_count'],
    core_clock:           c['core_clock'],
    boost_clock:          c['boost_clock'],
    integrated_graphics:  c['graphics'],
    smt:                  c['smt'],
    category_id:          3
  )
end

keyboards.each do |c|
  keyboard = Keyboard.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    style:                c['style'],
    switches:             c['switches'],
    backlit_color:        c['backlit'],
    tenkeyless:           c['tenkeyless'],
    connection_type:      c['connection_type'],
    color:                c['color'],
    category_id:          4
  )
end

memory.each do |c|
  memory = Ram.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    speed:                c['speed'],
    price_per_gb:         c['price_per_gb'],
    color:                c['color'],
    first_word_latency:   c['first_word_latency'],
    cas_latency:          c['cas_latency'],
    category_id:          5
  )
end

monitors.each do |c|
  monitor = ComputerMonitor.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    screen_size:          c['screen_size'],
    resolution:           c['resolution'],
    refresh_rate:         c['refresh_rate'],
    response_time:        c['response_time'],
    panel_type:           c['panel_type'],
    aspect_ratio:         c['aspect_ratio'],
    category_id:          6
  )
end

motherboards.each do |c|
  motherboards = Motherboard.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    socket:               c['socket'],
    form_factor:          c['form_factor'],
    max_memory:           c['max_memory'],
    memory_slots:         c['memory_slots'],
    color:                c['color'],
    category_id:          7
  )
end

mouses.each do |c|
  mouse = Mouse.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    tracking_method:      c['tracking_method'],
    connection_type:      c['connection_type'],
    max_dpi:              c['max_dpi'],
    hand_orientation:     c['hand_orientation'],
    color:                c['color'],
    category_id:          8
  )
end

opticaldrives.each do |c|
  opticaldrive = OpticalDrive.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    bd:                   c['bd'],
    dvd:                  c['dvd'],
    cd:                   c['cd'],
    bd_write:             c['bd_write'],
    dvd_write:            c['dvd_write'],
    cd_write:             c['cd_write'],
    category_id:          9
  )
end

powersupplies.each do |c|
  powersupply = Powersupply.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    powersupplytype:      c['type'],
    efficiency:           c['efficiency'],
    wattage:              c['wattage'],
    modular:              c['modular'],
    color:                c['color'],
    category_id:          10
  )
end

speakers.each do |c|
  speaker = Speaker.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    configuration:        c['configuration'],
    wattage:              c['wattage'],
    frequency:            c['frequency_response'],
    color:                c['color'],
    category_id:          11
  )
end

thermalpastes.each do |c|
  thermalpaste = ThermalPaste.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    amount:               c['amount'],
    category_id:          12
  )
end

videocards.each do |c|
  videocard = Videocard.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    chipset:              c['chipset'],
    memory:               c['memory'],
    core_clock:           c['core_clock'],
    boost_clock:          c['boost_clock'],
    color:                c['color'],
    length:               c['length'],
    category_id:          13
  )
end

webcams.each do |c|
  webcam = Webcam.find_or_create_by(
    name:                 c['name'],
    price:                c['price'],
    resolutions:          c['resolutions'],
    connection:           c['connection'],
    focus_type:           c['focus_type'],
    os:                   c['os'],
    fov:                  c['fov'],
    category_id:          14
  )
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


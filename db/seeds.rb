#Cabins create
cab_1 = Cabin.create!(number:1, description: 'Cabaña del Fondo')
cab_2 = Cabin.create!(number:2, description:'Cabaña al río')
cab_3 = Cabin.create!(number:3, description:'Cabaña con aparcamiento')
cab_4 = Cabin.create!(number:4, description:'Cabaña del medio')
cab_5 = Cabin.create!(number:5, description:'Cabaña del frente')
#Clients create
cli_1 = Client.create!(name:'Rodri', surname:'Chavez', email:'chavezpochi@gmail.com', phone:'2972-435678')
cli_2 = Client.create!(name:'Esteban', surname:'Menendes', email:'ejmenendes@gmail.com', phone:'2944-567342')
cli_3 = Client.create!(name:'Martin', surname:'Paneblanco', email:'nikolas090189@gmail.com', phone:'2944-436951')
cli_4 = Client.create!(name:'Eugenio', surname:'Gomez', email:'eugesma@gmail.com', phone:'2972-456789')
#Colors create
violet = Color.create!(color:'#673ab7')
green = Color.create!(color:'#673ab7')
red = Color.create!(color:'#673ab7')
blue = Color.create!(color:'#673ab7')
#reservation_states
occupied = ReservationState.create!(state:'ocupado', color: red)
seniate = ReservationState.create!(state:'señado', color: violet)
paid = ReservationState.create!(state:'pagado', color: blue)

#Prices create
price_1 = Price.create!(price: 400.50, from:'2016-01-01', to:'2016-12-31', cabin: cab_1)
price_2 = Price.create!(price: 300.50, from:'2016-01-01', to:'2016-12-31', cabin: cab_2)
price_3 = Price.create!(price: 600.50, from:'2016-01-01', to:'2016-12-31', cabin: cab_3)
price_4 = Price.create!(price: 700.50, from:'2016-01-01', to:'2016-12-31', cabin: cab_4)
price_5 = Price.create!(price: 100.50, from:'2016-01-01', to:'2016-12-31', cabin: cab_5)
#CabinStates create
desabilitado= CabinState.create!(state:'deshabilitado', color: red)
habilitado = CabinState.create!(state:'habilitado', color: green)
#CabinStateRanges create
range_1 = CabinStateRange.create!(from:'2016-01-01', to:'2016-12-07', cabin: cab_1, cabin_state: habilitado)
range_2 = CabinStateRange.create!(from:'2016-01-01', to:'2016-12-07', cabin: cab_2, cabin_state: habilitado)
range_3 = CabinStateRange.create!(from:'2016-01-01', to:'2016-12-07', cabin: cab_3, cabin_state: habilitado)
range_4 = CabinStateRange.create!(from:'2016-01-01', to:'2016-12-07', cabin: cab_4, cabin_state: habilitado)
range_5 = CabinStateRange.create!(from:'2016-01-01', to:'2016-12-07', cabin: cab_5, cabin_state: habilitado)

class Vehicle
    def initialize(model, year)
        @model = model
        @year = year
        @start = false
    end

    def engine_start
        @start = true
    end
end

class Car < Vehicle
    @@instances = 0
    def initialize(model, year)
        super
        @@instances += 1
    end

    def self.get_instances
        @@instances
    end

    def engine_start
        super
        puts 'El motor se ha encendido!'
    end
end

10.times do |e|
    Car.new("Modelo", "Año")
end

puts Car.get_instances


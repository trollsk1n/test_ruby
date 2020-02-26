# frozen_string_literal: true

# Employee class
class Employee

  attr_reader :name

  def initialize(name = 'Anonymous')
    self.name = name
  end

  def name=(name)
    raise 'Name can\'t blank!' if name.nil?

    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

# Salaried Employee class
class SalariedEmployee < Employee

  attr_reader :salary

  def initialize(name = 'Anonymous', salary = 0.0)
    super(name)
    self.salary = salary
  end

  def salary=(salary)
    raise "A salary of #{salary} isn't valid" if salary.negative?

    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{name}"
    puts "Pay for period: #{format('$%.2f', (salary / 365.0) * 14)}"
  end
end

# Hourly Employee class
class HourlyEmployee < Employee

  attr_reader :hourly_wage, :hours_per_week

  def initialize(name = 'Anonymous', hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def hourly_wage=(hourly_wage)
    raise "A hourly wage #{hourly_wage} is incorrect" if hourly_wage.negative?

    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week.negative?
      raise "A hours per week #{hours_per_week} is incorrect"
    end

    @hours_per_week = hours_per_week
  end

  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  def print_pay_stub
    print_name
    puts "Pay This Period: #{format('$%.2f', hourly_wage * hours_per_week * 2)}"
  end

end


SalariedEmployee.new('Amy Blake', 50_000).print_pay_stub
HourlyEmployee.new('John Smith', 14.97, 30).print_pay_stub
angela = HourlyEmployee.security_guard('Angela Matthews')
edwin = HourlyEmployee.janitor('Edwin Burgess')
ivan = HourlyEmployee.cashier('Ivan Stokes')

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub

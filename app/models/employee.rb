class Employee < ApplicationRecord

  def self.all
    return [
      {
        Name: 'Ashok Varma',
        designation: 'CEO',
        age: '45', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'sunil kumar',
        designation: 'Employee',
        age: '22', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'Aravind',
        designation: 'Employee',
        age: '22', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'Murali',
        designation: 'Employee',
        age: '22', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'Vivek',
        designation: 'TL',
        age: '24', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'kiran',
        designation: 'TL',
        age: '23', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'Pratyusha',
        designation: 'Product Manager',
        age: '23', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'Phani',
        designation: 'TL',
        age: '26', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'Achou',
        designation: 'TL',
        age: '26', # :P
        date_of_joining: '01-04-2011'
      },
      {
        Name: 'CK',
        designation: 'TL',
        age: '22', 
        date_of_joining: '01-04-2011'
      }
    ]
  end

  def self.capitalize
    employee = Employee.all
    employee.each do | emp |
      data = emp[:Name]
      (0...data.length).each do | index |
        if index == 0 || data[index - 1] == ' '
            data[index] = data[index].upcase
        else
          data[index] = data[index].downcase
        end
      end
      emp[:Name] = data
    end 
    return employee
  end

end

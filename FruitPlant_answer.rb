# Challenge
# Scientist have discovered a new plant. The fruit of the plant can feed 1 person for a whole week and best of all, the plant never dies.
# Fruits needs 1 week to grow, so each weak you can harvest it fruits.
# Also the plant gives 1 fruit more than the week before and to get more plants you need to plant a fruit.
# Now you need to calculate after how many weeks, you can support a group of x people, given y fruits to start with.
# Input
# 15 1
# Output
# 5
# Input description
# The input gives you 2 positive integers x and y, being x the number of people needed to be fed and y the number of fruits you start with.
# Output description
# The number of weeks before you can feed the entire group of people.
# Basic principle:
# Add one to each element in array and then total those to equal the zero's to add
# use: .times, .push, .reduce, .map

def funny_plant(people, plants)
    # initialize crop, people_fed, and weeks
    crop = Array.new
    people_fed = 0
    weeks = 1
    #initialize array with positions for each plant
    plants.times do
      crop.push(0)
    end
    #until people_fed > than # of people
    until people_fed >= people
      # add 1 to each plant in array
      crop.map!{ |i| i+1}
      # count the array to find the number of people that can be fed
      people_fed = crop.count
      # add up surplus to find out how many plants can be planted and add them to array
      crop.reduce(:+).times do
        crop.push(0)
      end
      # increment week
      weeks +=1
    end
    return weeks
end

#funny_plant(x, y) - x = number of ppl, y = number of plants to start out with
funny_plant(13, 1)
funny_plant(34, 1)
funny_plant(233, 1)
funny_plant(200, 15)
funny_plant(50000, 1)
funny_plant(150000, 250)

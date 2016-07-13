//: Playground - noun: a place where people can play

import UIKit


var name: [String] =
    [
        "Artem Anisimov",
        "Andrew Desjardins",
        "Marian Hossa",
        "Patrick Kane",
        "Marcus Kruger",
        "Brandon Mashinter",
        "Artemi Panarin",
        "Richard Panik",
        "Jonathan Toews C",
        "Brian Campbell",
        "Erik Gustafsson",
        "Niklas Hjalmarsson",
        "Duncan Keith A",
        "Michal Rozsival",
        "Brent Seabrook A",
        "Viktor Svedberg",
        "Trevor van Riemsdyk",
        "Corey Crawford",
        "Scott Darling",
]

var country:[String] = ["RUS", "CAN","SVK","USA","SWE","CAN","RUS","SVK","CAN","CAN","SWE","SWE","CAN","CZE","CAN","SWE","USA","CAN",
                        "USA"]

var age:[Int] = [28, 29, 37, 27, 26, 27, 24,25, 28, 37, 24, 29, 32, 37, 31, 25, 24,31, 27]


var height:[Int] = [76, 73, 73, 71, 72,76, 71, 73, 74,70, 72, 75, 73,73, 75, 80, 74, 74, 78]

var birthday=[(5,24,1988),
               (7, 27, 1986),
               (1,12,1979),
               (11,19, 1988),
               (5,27,1990),
               (9,20,1988),
               (10, 30, 1991),
               (2,7,1991),
               (4,29,1988),
               (5, 23,1979),
               (3,14,1992),
               (6,6,1987),
               (7,16,1983),
               (9,3, 1978),
               (4,20,1985),
               (5,24,1991),
               (7,24,1991),
               (12,31,1984),
               (12,33,1991)]


func OutputData()
{
    for i in 0 ..< name.count
    {
        print(" ",name[i], age[i], " ", height[i],country[i],birthday[i])
    }
}


func AverageAge()->Double
{
    var sum:Double = 0
    for i in 0 ..< age.count
    {
        sum = sum + Double(age[i])
    }
    let avg = sum/Double(age.count)
    
    return avg
}


func AverageHeight()->Double
{
    var sum:Double = 0
    for i in 0 ..< height.count
    {
        sum = sum + Double(height[i])
    }
    let avg = sum/Double(height.count)
    return avg
}

func SortAge()
{
    for _ in 0 ..< age.count
    {
        for j in 0 ..< age.count - 1
        {
            if(age[j] > age[j + 1])
            {
                let tempage = age[j]
                age[j] = age[j + 1]
                age[j+1] = tempage
                
                let tempheight = height[j]
                height[j] = height[j+1]
                height[j+1] = tempheight
                
                let tempname = name[j]
                name[j] = name[j+1]
                name[j+1] = tempname
            }
            
        }
    }
}

func SortCountry()
{
    for _ in 0 ..< country.count
    {
        for j in 0 ..< country.count - 1
        {
            if(country[j] > country[j + 1])
            {
                let tempage = age[j]
                age[j] = age[j + 1]
                age[j+1] = tempage
                
                let tempheight = height[j]
                height[j] = height[j+1]
                height[j+1] = tempheight
                
                let tempname = name[j]
                name[j] = name[j+1]
                name[j+1] = tempname
                
                let tempcountry = country[j]
                country[j] = country[j+1]
                country[j+1] = tempcountry
            }
            
        }
    }
}

func month()->String
{
    var months:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0]
    
    //Frequency Array
    for i in 0 ..< birthday.count
    {
        months[birthday[i].0 - 1]+=1
    }
    //print("months    array")
    //print(months)
    print()
    
    var Monthmax  = 0
    var countMax = months[0]
    
    for k in 1 ..< months.count
    {
        //print("months[\(k)] = \(months[k]) Monthmax = \(Monthmax)")
        if months[k] > countMax
        {
            //print("New Max is \(k) = \(months[k])")
            countMax = months[k]
            Monthmax = k + 1
        }
    }
    switch(Monthmax)
    {
    case 1 : return "Jan"
    case 2 : return "Feb"
    case 3 : return "Mar"
    case 4 : return "Apr"
    case 5 : return "May"
    case 6 : return "Jun"
    case 7 : return "Jul"
    case 8 : return "Aug"
    case 9 : return "Sep"
    case 10 : return "Oct"
    case 11 : return "Nov"
    case 12 : return "Dec"
    default: return "Bye"
    }
}

OutputData()
print("__________Sort By Age___________")
SortAge()
OutputData()
print("__________Sort By Country___________")
SortCountry()
OutputData()
print("__________Average age of Player__________")
print("Average player age is \(AverageAge())")
print("__________Average height of Player__________")
print("Average player height is \(AverageHeight())")
print("__________Most Popular Birthday____________")
print("Popular Birthday month is :\(month())")


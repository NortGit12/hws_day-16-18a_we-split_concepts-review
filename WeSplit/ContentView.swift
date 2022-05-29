//
//  ContentView.swift
//  WeSplit
//
//  Created by Jeff Norton on 5/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    let pets = ["Jewea", "Willow"]
    let people = ["Paul", "Charlotte", "Wendy"]
    let places = ["Los Angeles", "Salt Lake City", "Chicago", "New York City"]
    @State private var name = ""
    
    let students = ["Harry", "Hermoine", "Ron", ""]
    @State private var selectedStudent = "Harry"
    let colors = ["White", "Black", "Blue", "Yellow", "Red", "Green", "Orange", "Purple"]
    @State private var favoriteColor = ""
    let flavors = ["Chocolate", "Vanilla", "Strawberry"]
    @State private var selectedFlavor = "Chocolate"
    let pizzaToppings = ["Sausage", "Pepperoni", "Black Olives", "Mushrooms", "Pineapple"]
    @State private var selectedPizzaTopping = "Pepperoni"
    let poweredOptions = ["On", "Off"]
    @State private var selectedPoweredOptions = "Off"
    let positions = ["Left", "Middle", "Right"]
    @State private var selectedPosition = "Middle"
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    @State private var selectedNumber = "5"
    let animals = ["Dog", "Cat", "Duck", "Horse", "Fish"]
    @State private var selectedAnimal = "Horse"
    
    var body: some View {
        NavigationView {
            Form {
                Group {
                    Section("Button (simple state mgmt") {
                        Button("Tap count = \(tapCount)") {
                            self.tapCount += 1
                        }
                    }
                    Section("Pets (uses group") {
                        Group {
                            Text("\(pets[0])")
                            Text("\(pets[1])")
                        }
                    }
                    Section("People") {
                        ForEach(people, id: \.self) {
                            Text($0)
                        }
                    }
                    Section("Places") {
                        ForEach(places, id: \.self) {
                            Text($0)
                        }
                    }
                    Section("Name (uses two-way binding") {
                        TextField("Enter your name", text: $name)
                        Text("Your name is \(name)")
                    }
                }
                Group {
                    Section("Picker (Defaults (no modifiers) to NavStack behavior & ForEach views)") {
                        Picker("Select a student", selection: $selectedStudent) {
                            ForEach(students, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    Section("Picker - DefaultPickerStyle") {
                        Picker("Select your favorite color", selection: $favoriteColor) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(DefaultPickerStyle())
                    }
                    Section("Picker - InlinePickerStyle") {
                        Picker("Select a flavor", selection: $selectedFlavor) {
                            ForEach(flavors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(InlinePickerStyle())
                    }
                    Section("Picker - MenuPickerStyle") {
                        Picker("Select a pizza topping", selection: $selectedPizzaTopping) {
                            ForEach(pizzaToppings, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                    /*
                    Section("Picker - RadioGroupPickerStyle") {
                        Picker("Select the powered option", selection: $selectedPoweredOptions) {
                            ForEach(poweredOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(RadioGroupPickerStyle())
                    }
                    */
                    Section("Picker - SegmentedPickerStyle") {
                        Picker("Select the position", selection: $selectedPosition) {
                            ForEach(positions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    Section("Picker - WheelPickerStyle") {
                        Picker("Select a number", selection: $selectedNumber) {
                            ForEach(numbers, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                    }
                    /*
                    Section("Picker - PopUpButtonPickerStyle") {
                        Picker("Select an animal", selection: $selectedAnimal) {
                            ForEach(animals, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(PopUpButtonPickerStyle())
                    }
                    */
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

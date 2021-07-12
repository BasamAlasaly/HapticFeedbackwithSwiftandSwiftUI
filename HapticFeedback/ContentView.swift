//
//  ContentView.swift
//  HapticFeedback
//
//  Created by Basam Alasaly on 7/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Haptic Feedback Using Swift & SwiftUI \n")
                .font(.title2)
                + Text("Try this on your phone!")
                    .foregroundColor(.red)
                    .font(.title3)
            
            Button(action: {
                selectionChanged()
            }, label: {
                Text("Selection Changed")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
            
            ZStack
            {
                Color(.gray).edgesIgnoringSafeArea(.all)
            }.frame(height: 1)
            .padding([.leading, .trailing], 50)
            
            Button(action: {
                lightEffect()
            }, label: {
                Text("Light Effect")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
            
            Button(action: {
                mediumEffect()
            }, label: {
                Text("Medium Effect")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
            
            Button(action: {
                heavyEffect()
            }, label: {
                Text("Heavy Effect")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
            
            ZStack
            {
                Color(.gray).edgesIgnoringSafeArea(.all)
            }.frame(height: 1)
            .padding([.leading, .trailing], 50)
            
            Button(action: {
                successHaptic()
            }, label: {
                Text("Success")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
            
            Button(action: {
                warningHaptic()
            }, label: {
                Text("Warning")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
            
            Button(action: {
                errorHaptic()
            }, label: {
                Text("Error")
                    .foregroundColor(.white)
                    .padding()
            }).background(Color.gray)
            .cornerRadius(15)
        }
        .multilineTextAlignment(.center)
    }
}

extension View{
    func selectionChanged(){
        let feedbackGenerator = UISelectionFeedbackGenerator()
        feedbackGenerator.selectionChanged()
    }
    
    func lightEffect(){
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        feedbackGenerator.impactOccurred()
    }
    
    func mediumEffect(){
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        feedbackGenerator.impactOccurred()
    }
    
    func heavyEffect(){
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        feedbackGenerator.impactOccurred()
    }
    
    func successHaptic(){
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.error)
    }
    
    func warningHaptic(){
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.success)
    }
    
    func errorHaptic(){
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.warning)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

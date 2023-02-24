//
//  OneCodeOneUI.swift
//  OneCodeOneUI
//
//  Created by afsana-farheen on 23/02/23.
//


import SwiftUI


// Define the ContactsModel struct
struct ContactsModel {
    let contactName: String
    let contactEmail: String
    let contactProfileInfo: String
    let profileImage: String
    let selfIntro: String
}



struct ContactListView: View {
    let contacts = [ContactsModel(contactName: "John Doe", contactEmail: "john.doe@example.com", contactProfileInfo: "Software Developer", profileImage: "profile1", selfIntro: "Hi, I'm John and I'm a software developer with over 5 years of experience in iOS development."),
                         ContactsModel(contactName: "Jane Smith", contactEmail: "jane.smith@example.com", contactProfileInfo: "Graphic Designer", profileImage: "profile2", selfIntro: "Hello! My name is Jane and I'm a graphic designer with a passion for creating beautiful and functional designs."),
                         ContactsModel(contactName: "Bob Johnson", contactEmail: "bob.johnson@example.com", contactProfileInfo: "Project Manager", profileImage: "profile3", selfIntro: "Hi there, I'm Bob and I'm a project manager with experience leading teams in both Agile and Waterfall methodologies."),
                         ContactsModel(contactName: "Samantha Lee", contactEmail: "samantha.lee@example.com", contactProfileInfo: "Marketing Manager", profileImage: "profile4", selfIntro: "Hi, I'm Samantha and I'm a marketing manager with expertise in developing and executing successful marketing campaigns."),
                         ContactsModel(contactName: "Tom Smith", contactEmail: "tom.smith@example.com", contactProfileInfo: "Sales Representative", profileImage: "profile5", selfIntro: "Hello, my name is Tom and I'm a sales representative with a track record of exceeding sales targets and building strong relationships with clients."),ContactsModel(contactName: "Emily Johnson", contactEmail: "emily.johnson@example.com", contactProfileInfo: "UI Designer", profileImage: "profile6", selfIntro: "Hi, I'm Emily and I'm a UI designer with a passion for creating intuitive and engaging user experiences."),
                         ContactsModel(contactName: "Adam Jones", contactEmail: "adam.jones@example.com", contactProfileInfo: "Web Developer", profileImage: "profile7", selfIntro: "Hello, I'm Adam and I'm a web developer with experience in both frontend and backend development."),
                         ContactsModel(contactName: "Megan White", contactEmail: "megan.white@example.com", contactProfileInfo: "UX Designer", profileImage: "profile6", selfIntro: "Hi, my name is Megan and I'm a UX designer with expertise in creating user-centered designs that drive engagement and satisfaction."),
                         ContactsModel(contactName: "Jake Brown", contactEmail: "jake.brown@example.com", contactProfileInfo: "Software Engineer", profileImage: "profile4", selfIntro: "Hello, I'm Jake and I'm a software engineer with a passion for building scalable and maintainable software solutions."),
                         ContactsModel(contactName: "Sara Davis", contactEmail: "sara.davis@example.com", contactProfileInfo: "Marketing Coordinator", profileImage: "profile7", selfIntro: "Hi there, I'm Sara and I'm a marketing coordinator with experience in both traditional and digital marketing strategies.")]
    
    var body: some View {
        NavigationView {
            
            List(contacts, id: \.contactName) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    HStack {
                        Image(contact.profileImage)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(contact.contactName)
                                .font(.headline)
                            Text(contact.contactEmail)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

// Define the contact detail view
struct ContactDetailView: View {
    let contact: ContactsModel
    
    var body: some View {
        VStack {
            Image(contact.profileImage)
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(125)
               // .clipShape(Circle())
                
            Text(contact.contactName)
                .font(.title)
            Text(contact.contactEmail)
                .font(.subheadline)
            Text(contact.selfIntro)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }.toolbar {
            Button{
             
            }label: {
                Image(systemName: "phone")
            }
            Button{
             
            }label: {
                Image(systemName: "square.and.pencil")
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}

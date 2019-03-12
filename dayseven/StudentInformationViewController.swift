//
//  StudentInformationViewController.swift
//  dayseven
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//




import UIKit

class StudentInforamtionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var studentArray: [Student]!
    

    @IBOutlet weak var tvStudentDetails: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tvStudentDetails.delegate = self
        self.tvStudentDetails.dataSource = self
        loadStudentData()
    }
    private func loadStudentData()
    {
        studentArray = []
        studentArray.append(Student(Fname: "ayub", Lname: "ali", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "sneha", Lname: "Aggarwal", gender: "Female", result: "Pass"))
        studentArray.append(Student(Fname: "Mohammed Ayub", Lname: "Ali", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Arturo", Lname: "Gonzalez Castro", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Gurvinder", Lname: "Singh", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "arshad", Lname: "singh", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "jithu", Lname: "joshi", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "ameena", Lname: "sharma", gender: "Female", result: "Pass"))
        studentArray.append(Student(Fname: "sharat", Lname: "bhel", gender: "Male", result: "Fail"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentCell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as! StudentDetailsTableViewCell
        
        let student = self.studentArray[indexPath.row]
        
        studentCell.lblStudentFirstName.text = student.Fname
        studentCell.lblStudentLastName.text = student.Lname
        studentCell.lblStudentResult.text = student.gender
        studentCell.lblStudentResult.text = student.result
        studentCell.lblStudentResult.textColor = UIColor.green
        if(student.result == "Fail")
        {
            studentCell.lblStudentResult.textColor = UIColor.red
        }
        
        return studentCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

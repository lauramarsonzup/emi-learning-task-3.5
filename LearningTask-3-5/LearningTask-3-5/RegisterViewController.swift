//
//  ViewController.swift
//  LearningTask-3-5
//
//  Created by Laura Pinheiro Marson on 18/10/22.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var occupationTextField: UITextField!
    @IBOutlet weak var employmentStatusTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        showAlertToConfirmRegistration()
    }
    
    func showAlertToConfirmRegistration() {
        guard let name = nameTextField.text,
              let email = emailTextField.text,
              let occupation = occupationTextField.text,
              let employmentStatus = employmentStatusTextField.text
        else { return }
        
        let title = "Quase lá!"
        let message = """
        Antes de enviarmos, por favor, revise seus dados:
        
        Nome: \(name)
        Email: \(email)
        Área de Atuação: \(occupation)
        Status Profissional: \(employmentStatus)
        """
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: showConfirmationAlert))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        
        self.present(alert, animated: true)
    }
    
    func showConfirmationAlert(alert: UIAlertAction) {
        let alert = UIAlertController(title: "Feito!", message: "Verifique seu email e tenha acesso ao documento.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok!", style: .cancel))
        
        self.present(alert, animated: true)
    }
    
}


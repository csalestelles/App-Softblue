//
//  ViewController.swift
//  App Teste Softblue
//
//  Created by Caio Arthur on 02/10/15.
//  Copyright © 2015 Caio Arthur. All rights reserved.
//

import UIKit

let MyPI : Float = 3.14   //constante global

func RetornaDobro(valor : Int) -> Int  //definindo uma função    func nomedafunção(parâmetros) -> tipoderetorno{}
{
    return valor*2
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print("Olá Mundo!")
        
        
        //STRING
        
        //var myBuffer = String()
        var myBuffer : String = String()   //<--- definição mais otimizada
        myBuffer = "\nHello world!"
        print(myBuffer)
        
        
        //OPERACOES MATEMATICAS
        
        let x : Int = 11    //let é definição de constantes
        let y : Int = 3
        var z : Float = Float(x)/Float(y)
        print("\nvalor de z: \(z)")
        
        
        //CONSTANTES
        
        z = MyPI * 2
        print("\nPI vezes 2: \(z)")
        
        
        //LAÇO FOR
        
        print("\nFOR: ")
        var i : Int
        for i = 0; i<=10; ++i{
            //Comando if
            if(i==3){
                break     //finaliza o laço
                print("três")
                continue       //comando que quebra o laço atual(laço do num 3) e pula para o proximo
            }
            print(i)  //print("\(i) ") para quando hover strings
        }
        
        //FOR ALTERNATIVO
        
        print("\nFOR alternativo: ")
        for i in 0...10{
            print("FOR alt.: \(i)")
        }
        
        
        //WHILE
        
        print("\nWhile: ")
        i = 0
        while(i<=10){
            print("valor do while : \(i)")
            i++
        }
        
        //REPEAT WHILE 
        
        print("\nRepeat While: ")
        i = 20     //repeat-while execulta ao menos uma vez mesmo que a condição não seja satisfeita
        repeat{
            
        print("\nRepeatwhile: \(i)")
        i++
            
        }while(i<=10)
        
        
        //IF
        
        print("\nComando IF: ")
        i = 6
        if (i>5){
            print("i é maior que 5")
        }
        else if (i == 4){
            print("i é igual a 4")
        }
        else{
            print("i é menor que 4 ou igual a 5")
        }
        
        //SHORT IF
        
        print("\nShort IF: ")
        myBuffer = i>5 ? "i maior que 5":"i menor ou igual a 5"
        print(myBuffer)
        
        myBuffer = (i % 2) == 0 ? "i é par":"i é ímpar"
        print(myBuffer)
        
        
        //SWITCH
        
        print("\nSwitch: ")
        i = 2
        switch(i){
        case 0 :
            print("i entrou em 0")
            break      //brake é opcional no switch (Não avança para os outros cases)
        
        case 1:
            print("i entrou em 1")
            break
        case 2:
            print("i entrou em 2")
            break
        case 3 :
            print("i entrou em 1")
            break
        default:
            print("Não entrou em nenhum case")
        }
      
        
        //FUNCOES
        
        print("\nFunçoes: ")
        i=6
        let w : Int = RetornaDobro(i)
        print("O dobro de \(i) é igual à \(w)")
        
        
        //NSInteger
        let ins : NSInteger = 50
        print("\nNSInteger: \(ins)")
        
        
        //NSNumber
        let Nsn : NSNumber = 10.75
        print("\nNSNumber: \(Nsn)")
    
        
        //ARRAY
        
        print("\nArrays: ")
        //var myArray : [String] = ["Vermelho", "Verde", "Azul", "Amarelo"]
        var myArray : NSMutableArray = ["Vermelho", "Verde", "Azul", "Amarelo"]
        print("Posição 1 do array: \(myArray[0])")
        print("Posição 2 do array: \(myArray[1])")
        print("Posição 3 do array: \(myArray[2])")
        print("Posição 4 do array: \(myArray[3])")
        
        let lenghtArray : Int = myArray.count       //array.count é a quantidade de elementos do array
        print("O myArray possui \(lenghtArray) elementos")
        
        myArray[1] = "Roxo"             //faz alterações em determinado indice do array
        myArray.removeObjectAtIndex(0)  //remove o valor atribuido ao indice indicado
        myArray.insertObject("Verde", atIndex : 2)
        
        for color in myArray{           // color é uma variável definida aqui
            print("in myArray: \(color)")
        }
        
        
        //NSDictionary
        
        print("\nNSDictionary: ")
        let myDic : NSDictionary = ["Usuário" : "Caioatelles", "Senha" : "Softbluecurso", "E-mail" : "csalestelles@gmail.com"]
        let myKey : String = "Senha"
        var myObject : AnyObject    // define no swift que o objeto pode ser de qualquer tipo
        
        myObject = myDic.objectForKey(myKey)!   //objectforkey procura o objeto associado à chave em parênteses
        print("A chave \(myKey) aponta para o elemento \(myObject)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Nasim Nozirov on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
     let colorView: UIView = {
        let colorView = UIView()
        colorView.backgroundColor = .green
        colorView.translatesAutoresizingMaskIntoConstraints = false
        return colorView
    }()

   private let redLabel: UILabel = {
        let label = UILabel()
        label.text = "Red:"
        label.textAlignment = .left
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let greenLabel: UILabel = {
        let label = UILabel()
        label.text = "Green:"
        label.textAlignment = .left
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let blueLabel: UILabel = {
        let label = UILabel()
        label.text = "Blue:"
        label.textAlignment = .left
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let horizontalStackViewLabelName: UIStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.alignment = .fill
        verticalStackView.distribution = .fill
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 40
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return verticalStackView
    }()
    
    private let redLabelNumber: UILabel = {
         let label = UILabel()
         label.text = "Red:"
         label.textAlignment = .left
         label.backgroundColor = .black
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    
    private let greenLabelNumber: UILabel = {
        let label = UILabel()
        label.text = "Green:"
        label.textAlignment = .left
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let blueLabelNumber: UILabel = {
        let label = UILabel()
        label.text = "Blue:"
        label.textAlignment = .left
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let horizontalStackViewLabelNumber: UIStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.alignment = .fill
        horizontalStackView.distribution = .fill
        horizontalStackView.axis = .vertical
        horizontalStackView.spacing = 40
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStackView
    }()
    
    private let redSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0.5
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let greenSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0.5
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let blueSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0.5
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let horizontalStackViewSlider: UIStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.alignment = .fill
        horizontalStackView.distribution = .fill
        horizontalStackView.axis = .vertical
        horizontalStackView.spacing = 30
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStackView
    }()
    
    
    private let horizontalStackView: UIStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.alignment = .fill
        horizontalStackView.distribution = .fill
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 30
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(horizontalStackView)
        addElementInStackView()
        installConstraints()
    }
    private func addElementInStackView() {
        horizontalStackViewLabelName.addArrangedSubview(redLabel)
        horizontalStackViewLabelName.addArrangedSubview(greenLabel)
        horizontalStackViewLabelName.addArrangedSubview(blueLabel)
        horizontalStackViewLabelNumber.addArrangedSubview(redLabelNumber)
        horizontalStackViewLabelNumber.addArrangedSubview(greenLabelNumber)
        horizontalStackViewLabelNumber.addArrangedSubview(blueLabelNumber)
        horizontalStackViewSlider.addArrangedSubview(redSlider)
        horizontalStackViewSlider.addArrangedSubview(greenSlider)
        horizontalStackViewSlider.addArrangedSubview(blueSlider)
        horizontalStackView.addArrangedSubview(horizontalStackViewLabelName)
        horizontalStackView.addArrangedSubview(horizontalStackViewLabelNumber)
        horizontalStackView.addArrangedSubview(horizontalStackViewSlider)
    }

    private func installConstraints() {
        NSLayoutConstraint.activate([
            colorView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            colorView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            colorView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            colorView.heightAnchor.constraint(equalTo: colorView.heightAnchor),
            
            horizontalStackView.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 50),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            horizontalStackViewLabelName.widthAnchor.constraint(equalTo: horizontalStackViewLabelName.widthAnchor, constant: 52),
            horizontalStackViewLabelNumber.widthAnchor.constraint(equalTo: horizontalStackViewLabelNumber.widthAnchor, constant: 52)
        ])
    }
}



//class ViewController: UIViewController {
//
//    // a label above the horizontal stack view
//    private let labelAboveHorizontalStackView: UILabel = {
//        let v = UILabel()
//        v.text = "Label above stack view"
//        v.textAlignment = .center
//        v.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
//        v.translatesAutoresizingMaskIntoConstraints = false
//        return v
//    }()
//
//    private let horizontalStackview: UIStackView = {
//        let horizontalStackview = UIStackView()
//        horizontalStackview.distribution = .fillEqually
//        horizontalStackview.axis = .horizontal
//        horizontalStackview.spacing = 200
//        horizontalStackview.translatesAutoresizingMaskIntoConstraints = false
//        return horizontalStackview
//    }()
//
//    private let verticalFirstUIView: UIView = {
//        let verticalFirstUIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 80))
//        verticalFirstUIView.backgroundColor = .white
//        verticalFirstUIView.layer.borderWidth = 2
//        verticalFirstUIView.layer.borderColor = UIColor.gray.cgColor
//        verticalFirstUIView.translatesAutoresizingMaskIntoConstraints = false
//        return verticalFirstUIView
//    }()
//
//    private let verticalSecondUIView: UIView = {
//        let verticalSecondUIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 80))
//        verticalSecondUIView.backgroundColor = .white
//        verticalSecondUIView.layer.borderWidth = 2
//        verticalSecondUIView.layer.borderColor = UIColor.blue.cgColor
//        verticalSecondUIView.translatesAutoresizingMaskIntoConstraints = false
//        return verticalSecondUIView
//    }()
//
//    private let verticalFirstStackView: UIStackView = {
//        let verticalFirstStackView = UIStackView()
//        verticalFirstStackView.axis = .vertical
//        verticalFirstStackView.alignment = .center
//        verticalFirstStackView.distribution = .fillEqually
//        verticalFirstStackView.spacing = 5
//        verticalFirstStackView.translatesAutoresizingMaskIntoConstraints = false
//        return verticalFirstStackView
//    }()
//
//    private let verticalSecondStackView: UIStackView = {
//        let verticalSecondStackView = UIStackView()
//        verticalSecondStackView.axis = .vertical
//        verticalSecondStackView.alignment = .center
//        verticalSecondStackView.distribution = .fillEqually
//        verticalSecondStackView.spacing = 5
//        verticalSecondStackView.translatesAutoresizingMaskIntoConstraints = false
//        return verticalSecondStackView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // add 3 labels to each vertical stack view
//        [verticalFirstStackView, verticalSecondStackView].forEach { sv in
//            let ulText = UILabel()
//            let ulTextTwo = UILabel()
//            let ulTextThree = UILabel()
//
//            ulText.text = "text"
//            ulTextTwo.text = "text2"
//            ulTextThree.text = "text3"
//
//            // let's give the labels a background color to easily see the layout
//            ulText.backgroundColor = .yellow
//            ulTextTwo.backgroundColor = .green
//            ulTextThree.backgroundColor = .cyan
//            sv.addArrangedSubview(ulText)
//                        sv.addArrangedSubview(ulTextTwo)
//                        sv.addArrangedSubview(ulTextThree)
//                    }
//
//                    // add each vertical stack view as a subview of "UI" views
//                    verticalFirstUIView.addSubview(verticalFirstStackView)
//                    verticalSecondUIView.addSubview(verticalSecondStackView)
//
//                    // constrain the stack views to the "UI" views
//                    //  with 15-pts "padding" on Top / Leading / Trailing
//                    NSLayoutConstraint.activate([
//                        verticalFirstStackView.topAnchor.constraint(equalTo: verticalFirstUIView.topAnchor, constant: 15.0),
//                        verticalFirstStackView.leadingAnchor.constraint(equalTo: verticalFirstUIView.leadingAnchor, constant: 15.0),
//                        verticalFirstStackView.trailingAnchor.constraint(equalTo: verticalFirstUIView.trailingAnchor, constant: -15.0),
//                        verticalFirstStackView.bottomAnchor.constraint(equalTo: verticalFirstUIView.bottomAnchor, constant: 0.0),
//
//                        verticalSecondStackView.topAnchor.constraint(equalTo: verticalSecondUIView.topAnchor, constant: 15.0),
//                        verticalSecondStackView.leadingAnchor.constraint(equalTo: verticalSecondUIView.leadingAnchor, constant: 15.0),
//                        verticalSecondStackView.trailingAnchor.constraint(equalTo: verticalSecondUIView.trailingAnchor, constant: -15.0),
//                        verticalSecondStackView.bottomAnchor.constraint(equalTo: verticalSecondUIView.bottomAnchor, constant: 0.0),
//                    ])
//
//                    // add the two "UI" views to the horizontal stack view
//                    horizontalStackview.addArrangedSubview(verticalFirstUIView)
//                    horizontalStackview.addArrangedSubview(verticalSecondUIView)
//
//                    // add the "above label" to the view
//                    view.addSubview(labelAboveHorizontalStackView)
//
//                    // add horizontal stack view to the view
//                    view.addSubview(horizontalStackview)
//
//                    // let's respect the safe area
//                    let g = view.safeAreaLayoutGuide
//
//                    NSLayoutConstraint.activate([
//
//                        // label 40-pts from top
//                        labelAboveHorizontalStackView.topAnchor.constraint(equalTo: g.topAnchor, constant: 40.0),
//                        // label centered horizontally
//                        labelAboveHorizontalStackView.centerXAnchor.constraint(equalTo: g.centerXAnchor),
//
//                        // stack view 10-pts below label
//                        horizontalStackview.topAnchor.constraint(equalTo: labelAboveHorizontalStackView.bottomAnchor, constant: 10.0),
//
//                        // allow the arranged subviews to determine the width?
//                        // if yes, center the horizontal stack view
//                        horizontalStackview.centerXAnchor.constraint(equalTo: g.centerXAnchor),
//
//            // let's make the "above label" the same width as the
//                        //  resulting width of the horizontal stack view
//                        labelAboveHorizontalStackView.widthAnchor.constraint(equalTo: horizontalStackview.widthAnchor),
//
//                    ])
//
//                }
//
//            }

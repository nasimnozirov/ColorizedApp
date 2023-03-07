//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Nasim Nozirov on 19.02.2023.
//

import UIKit

class MainViewController: UIViewController{
    
    private let colorView: UIView = {
        let colorView = UIView()
        colorView.backgroundColor = .green
        colorView.translatesAutoresizingMaskIntoConstraints = false
        return colorView
    }()
    
    private let redLabel: UILabel = {
        let label = UILabel()
        label.text = "Red:"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let greenLabel: UILabel = {
        let label = UILabel()
        label.text = "Green:"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let blueLabel: UILabel = {
        let label = UILabel()
        label.text = "Blue:"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let verticalStackViewLabelName: UIStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.alignment = .fill
        verticalStackView.distribution = .fill
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 40
        verticalStackView.backgroundColor = .white
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return         verticalStackView
    }()
    
    private let redLabelNumber: UILabel = {
        let label = UILabel()
        label.text = "0.00"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let greenLabelNumber: UILabel = {
        let label = UILabel()
        label.text = "0.00"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let blueLabelNumber: UILabel = {
        let label = UILabel()
        label.text = "0.00"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let verticalStackViewLabelNumber: UIStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.alignment = .fill
        verticalStackView.distribution = .fill
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 37
        verticalStackView.backgroundColor = .white
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return verticalStackView
    }()
    
    private let redSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.setValue(0.5, animated: true)
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let greenSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.setValue(0.5, animated: true)
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let blueSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.setValue(0.5, animated: true)
        slider.minimumTrackTintColor = .blue
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let verticalStackViewSlider: UIStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.alignment = .fill
        verticalStackView.distribution = .fill
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 30
        verticalStackView.backgroundColor = .white
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return verticalStackView
    }()
    
    private let horizontalStackView: UIStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.alignment = .fill
        horizontalStackView.distribution = .fill
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 18
        horizontalStackView.alpha = 1
        horizontalStackView.backgroundColor = .white
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(colorView)
        view.addSubview(horizontalStackView)
        paybackSliderValueDidChange()
        addElementInStackView()
        installConstraints()
        addTarget()
    }
    
    private func addElementInStackView() {
        
        verticalStackViewLabelName.addArrangedSubview(redLabel)
        verticalStackViewLabelName.addArrangedSubview(greenLabel)
        verticalStackViewLabelName.addArrangedSubview(blueLabel)
        
        verticalStackViewLabelNumber.addArrangedSubview(redLabelNumber)
        verticalStackViewLabelNumber.addArrangedSubview(greenLabelNumber)
        verticalStackViewLabelNumber.addArrangedSubview(blueLabelNumber)
        
        verticalStackViewSlider.addArrangedSubview(redSlider)
        verticalStackViewSlider.addArrangedSubview(greenSlider)
        verticalStackViewSlider.addArrangedSubview(blueSlider)
        
        horizontalStackView.addArrangedSubview(verticalStackViewLabelName)
        horizontalStackView.addArrangedSubview(verticalStackViewLabelNumber)
        horizontalStackView.addArrangedSubview(verticalStackViewSlider)
        
    }
    
    private func installConstraints() {
        NSLayoutConstraint.activate([
            colorView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            colorView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            colorView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            colorView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, constant: -500),
            
            
            
            horizontalStackView.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 50),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            horizontalStackView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, constant: -600),
            
            verticalStackViewLabelName.widthAnchor.constraint(equalToConstant: 52),
            verticalStackViewLabelNumber.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func addTarget() {
        redSlider.addTarget(self, action: #selector(paybackSliderValueDidChange), for: .valueChanged)
        greenSlider.addTarget(self, action: #selector(paybackSliderValueDidChange), for: .valueChanged)
        blueSlider.addTarget(self, action: #selector(paybackSliderValueDidChange), for: .valueChanged)
    }
    
    @objc func paybackSliderValueDidChange() {
        setColor()
        redLabelNumber.text = String(format: " %.2f", redSlider.value)
        greenLabelNumber.text = String(format: " %.2f", greenSlider.value)
        blueLabelNumber.text = String(format: " %.2f", blueSlider.value)
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
}



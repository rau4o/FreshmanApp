//
//  ArtVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ArtVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    let artreuseIdentifier = "artcollectionViewCellId"
    
    
   
    var itemsClubs:[Clubs] = {
        var arr: [Clubs] = []
        
        var first = Clubs()
        first.name = "Academic Club"
        first.imageName = "Academic"
        first.text = "Club Academic - is a scientific club on the basis of the Law Faculty of Suleyman Demirel University. Academic club operates on the basis of principles of self-government, voluntariness, equal rights of members, publicity and democracy.development of scientific, intellectual, creative and business potential of students;faculty and university assistance in scientific aspects, as well as in strategic development."
        var second = Clubs()
        second.name = "Art Club"
        second.imageName = "Art"
        second.text = "Cообщество самых творческих студентов университета. ART Club был образован в 2009 году, и с тех пор активно развивается. Задача клуба – объединить людей, заинтересованных в рисовании, театральном искусстве и рукоделии и дать им возможность развивать свои таланты. В ART Club проводятся занятия по академическому рисунку, созданию комиксов, рукоделию и театральному искусству"
        var third = Clubs()
        third.name = "Debate Club"
        third.imageName = "Debate"
        third.text = "The aim: By improving eloquence and oratorical skills of a person, prepare politically stable individuals and leaders with own opinions, which  will make a significant contribution into the country.Mission: redound to build civil society by improving legal conception of socium.Anthem: In words - meaning, in action - accomplishment!"
        var four = Clubs()
        four.name = "Dombyra Club"
        four.imageName = "Dombyra"
        four.text = "Домбыра club был создан в 2008 году Козайдар Шынгысом. До сегодняшнего дня было вложено немало усилий и времени, чтобы клуб процветал и находился на соответствующем уровне. Для этого, в основном, клуб опирается на знания своих же одноклубников, благодаря чему происходит постоянный обмен опытом и знаниями.В клубе вы можете научиться играть на домбре, также подтянуть свои уже имеющиеся навыки. Клуб активно участвует в разных мероприятиях не только в стенах СДУ. Встреча высокопоставленных гостей с других стран, которые зачастую бывают гостями СДУ, производится с сопровождением ансамбля домбристов состоящего из студентов нашего университета. Музыкальный инструментарий казахского народа разнообразен, богат и специфичен. Наши талантливые студенты университета умеют объединять казахские фольклорные инструменты воедино, создавая тем самым красивую национальную музыку."
        var five = Clubs()
        five.name = "Education Club"
        five.imageName = "Education"
        five.text = "Education Club – это клуб преуспевающих студентов, которые помогают всем желающим повысить их уровень знаний в интересующих областях как в рамках университета, так и за ними. За долгие годы успешной работы клуб регулярно проводит дополнительные занятия, организовывает мероприятия и реализовывает проекты приносящие пользу школьникам и студентам в сфере образования"
        var six = Clubs()
        six.name = "Enterprise Club"
        six.imageName = "Enterprise"
        six.text = ""
        var sev = Clubs()
        sev.name = "Event Club"
        sev.imageName = "Even"
        var eight = Clubs()
        eight.name = "Faces Club"
        eight.imageName = "Faces"
        eight.text = "SDU Faces - амбициозный клуб участвует во всех крупных мероприятиях в качестве официальной прессы, но так же работает независимо и в повседневной жизни. Главной целью клуба является запечатлеть неповторимые моменты студенческой жизни передать их по средствам ярких и качественных фотографий, и так же обучать новых участников клуба мастерству фотографирования"
        var nine = Clubs()
        nine.name = "Iq Club"
        nine.imageName = "Iq"
        var ten = Clubs()
        ten.name = "Magzhan Club"
        ten.imageName = "Magzhan"
        ten.text = "Сулейман Демирел университетінде «Мағжан» атты клубтың жұмыс атқарғанына 10 жыл толып отыр. Клубтың негізі 2006 жылы Ұлан Еркінбай бастамасымен қаланған. Идеяны алғаш ұсынған Темірхан Тебегенов болатын. Әдеби ұжымның құрылудағы мақсаты, бірінші кезекте әдебиетке жаны құмар жастарды дамыту, сондай-ақ әдебиетті лайықты деңгейде насихаттау. Осы мақсатта «Мағжан» клубы  Халықаралық  дәрежедегі айтыстар ұйымдастырып, ақын-жазушылармен кезесулер өткізіп келеді. Кулб өз ішінде үш бағытқа бөлініп  жұмыс жасайды:"
        var ele = Clubs()
        ele.name = "M&M Club"
        ele.imageName = "MM"
        
        
        arr.append(first)
        arr.append(second)
        arr.append(third)
        arr.append(four)
        arr.append(five)
        arr.append(six)
        arr.append(sev)
        arr.append(eight)
        arr.append(nine)
        arr.append(ten)
        arr.append(ele)
        return arr
    }()
    
    
    //MARK: - Outlets

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showClub" {
            if let vc = segue.destination as? DetailClubVC {
                let club = sender as? Clubs
                vc.club = club
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: artreuseIdentifier, for: indexPath) as! ArtCollectionViewCell
    
        cell.clubs = itemsClubs[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let club = itemsClubs[indexPath.row]
        
        performSegue(withIdentifier: "showClub", sender: club)
        
    }



}

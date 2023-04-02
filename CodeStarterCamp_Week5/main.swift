//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/*
 학습 목표
 - Protocol을 채택한 타입을 생성하고, 다중채택을 활용해볼 수 있다.
 - 타입 캐스팅을 활용해 인스턴스의 타입을 검사할 수 있다.
 - 접근 제한자를 활용해 외부로부터의 접근을 방지할 수 있다.
 */

let kobe: TalentedPerson = TalentedPerson(name: "kobe", height: 180.5, singing: .A, dancing: .A, acting: .A, parentsJob: .Programmer)
let badPerson: TalentedPersonWithBadPersonality = TalentedPersonWithBadPersonality(name: "Bad Man", height: 190.2, singing: .A, dancing: .A, acting: .A, parentsJob: .Doctor, frequanceOfCursing: .A)
let normalPerson: TalentedPerson = TalentedPerson(name: "Noma", height: 160, singing: .C, dancing: .C, acting: .B, parentsJob: .MovieStar)
let kira: TalentedPerson = TalentedPerson(name: "Kira", height: 170.2, singing: .C, dancing: .B, acting: .C, parentsJob: .Programmer)

var yagom = AuditionManager(totalApplicantsList: [kobe, badPerson, normalPerson, kira])

yagom.cast()
yagom.announcePassedApplicants()

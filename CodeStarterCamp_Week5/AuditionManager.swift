//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Minseong Kang on 2023/04/02.
//

import Foundation

struct AuditionManager {
	// 누구나 접수 가능하기 때문에
	public private(set) var totalApplicantsList: [Person]
	// 합격자는 비밀이기 때문에
	private var passedApplicantsList: [Person] = []
	
	init(totalApplicantsList: [Person]) {
		self.totalApplicantsList = totalApplicantsList
	}
	
	mutating func cast() {
		totalApplicantsList.forEach { person in
			if let person = person as? TalentedPerson {
				if person.acting == .A || person.dancing == .A || person.singing == .A {
					passedApplicantsList.append(person)
				} else {
					switch person.parentsJob {
					case .Doctor:
						person.acting = .A
						person.dancing = .B
						person.singing = .C
					case .Dancer:
						person.acting = .B
						person.dancing = .A
						person.singing = .C
					case .MovieStar:
						person.acting = .A
						person.dancing = .A
						person.singing = .A
					case .Producer:
						person.acting = .B
						person.dancing = .B
						person.singing = .A
					case .Programmer:
						person.acting = .C
						person.dancing = .B
						person.singing = .B
					case .Singer:
						person.acting = .C
						person.dancing = .A
						person.singing = .A
					}
					
					if person.acting == .A || person.dancing == .A || person.singing == .A {
						passedApplicantsList.append(person)
					}
				}
			}
		}
	}
	
	func announcePassedApplicants() {
		let passedPersonNameList = passedApplicantsList
		print("---합격자 명단---")
		for person in passedPersonNameList {
			print(person.name)
		}
		print(
  """
  --------------
  축하합니다!!
  """)
	}
}

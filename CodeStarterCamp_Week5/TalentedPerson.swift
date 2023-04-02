//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by Minseong Kang on 2023/04/02.
//

import Foundation

class TalentedPerson: Person, Talent {
	var singing: Level
	var dancing: Level
	var acting: Level
	var parentsJob: Job
	
	init(name: String, height: Double, singing: Level, dancing: Level, acting: Level, parentsJob: Job) {
		self.singing = singing
		self.dancing = dancing
		self.acting = acting
		self.parentsJob = parentsJob
		
		super.init(name: name, height: height)
	}
}

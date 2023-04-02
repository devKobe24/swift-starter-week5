//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by Minseong Kang on 2023/04/02.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
	var singing: Level
	var dancing: Level
	var acting: Level
	var parentsJob: Job
	var frequanceOfCursing: Level
	
	init(name: String, height: Double, singing: Level, dancing: Level, acting: Level, parentsJob: Job, frequanceOfCursing: Level) {
		self.singing = singing
		self.dancing = dancing
		self.acting = acting
		self.parentsJob = parentsJob
		self.frequanceOfCursing = frequanceOfCursing
		
		super.init(name: name, height: height)
	}
}

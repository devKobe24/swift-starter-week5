//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by Minseong Kang on 2023/04/02.
//

import Foundation

enum Job {
	case Doctor
	case Singer
	case Producer
	case Programmer
	case MovieStar
	case Dancer
	
	var description: String {
		switch self {
		case .Doctor:
			return "의사"
		case .Singer:
			return "가수"
		case .Producer:
			return "아이돌 프로듀서"
		case .Programmer:
			return "iOS 개발자"
		case .MovieStar:
			return "영화배우"
		case .Dancer:
			return "안무가"
		}
	}
	
	var inheritanceLevel: Level {
		switch self {
		case .Doctor:
			return .B
		case .Singer:
			return .A
		case .Producer:
			return .A
		case .Programmer:
			return .C
		case .MovieStar:
			return .A
		case .Dancer:
			return .A
		}
	}
}

protocol Talent {
	var singing: Level { get }
	var dancing: Level { get }
	var acting: Level { get }
	var parentsJob: Job { get }
}

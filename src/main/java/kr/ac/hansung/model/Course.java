package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Course {
	
	private int year;
	
	private String semester;
	
	@NotEmpty(message = "과목 코드를 입력하세요")
	private String code;
	
	@NotEmpty(message = "수강할 교과목을 입력하세요")
	private String title;
	
	@NotEmpty(message = "이수 구분을 선택하세요")
	private String division;
	
	private int grades;

}

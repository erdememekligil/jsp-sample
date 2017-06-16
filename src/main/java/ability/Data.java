package ability;

import java.util.ArrayList;
import java.util.List;

public class Data {

	public List<Person> getAllData() {
		List<Person> data = new ArrayList<>();
		
		for (int i = 1; i <= 5; i++) {
			data.add(new Person("person " + i));
		}
		
		return data;
	}
}

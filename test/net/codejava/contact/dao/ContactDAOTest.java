package net.codejava.contact.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import net.codejava.contact.model.Contact;

class ContactDAOTest {
	private DriverManagerDataSource dataSource;
	private ContactDAO dao;

	@BeforeEach
	void stupBeforeEach() {
		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/contactdb");
		dataSource.setUsername("root");
		dataSource.setPassword("");

		dao = new ContactDAOImpl(dataSource);
	}

	@Test
	void testSave() {

		Contact contact = new Contact("Hasan", "asif@gmail.com", "25/5B Azizmoholla", "01863622375");
		int result = dao.save(contact);

		assertTrue(result > 0);
	}

	@Test
	void testUpdate() {
		Contact contact = new Contact(2, "Adib", "asif@gmail.com", "25/5B Azizmoholla", "01863622375");
		int result = dao.update(contact);

		assertTrue(result > 0);
	}

	@Test
	void testGet() {
		int id = 1;
		System.out.println();
		Contact contact = dao.get(id);
		System.out.println(contact);

		assertNotNull(contact);
	}

	@Test
	void testDelete() {
		int id = 2;
		int result = dao.delete(id);
		assertTrue(result > 0);

	}

	@Test
	void testList() {
		
		List<Contact> listContact = dao.list();
        for(Contact acontact :listContact ) {
			System.out.println(acontact);
		}
		assertTrue(!listContact.isEmpty());
	}

}

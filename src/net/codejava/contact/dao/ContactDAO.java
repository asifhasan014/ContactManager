package net.codejava.contact.dao;

import java.util.List;

import net.codejava.contact.model.Contact;

public interface ContactDAO {
	public int save(Contact contact);
	
	public int update(Contact contact);
	
	public Contact get(int id);
	
	public int delete(int id);
	
	public List<Contact> list();
}

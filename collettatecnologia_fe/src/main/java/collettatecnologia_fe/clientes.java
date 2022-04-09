package collettatecnologia_fe;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class clientes {

	private String cnpj_cc;
	private String razao_social_cc;
	private String email_cc;
	private String pass_cc;
	private Date dt_cadastro_cc;
	
	public String getcnpj_cc() {
		return cnpj_cc;
	}

	public void setcnpj_cc(String cnpj_cc) {
		this.cnpj_cc = cnpj_cc;
	}

	public String getrazao_social_cc() {
		return razao_social_cc;
	}

	public void setrazao_social_cc(String razao_social_cc) {
		this.razao_social_cc = razao_social_cc;
	}

	public String getemail_cc() {
		return email_cc;
	}

	public void setemail_cc(String email_cc) {
		this.email_cc = email_cc;
	}

	public String getpass_cc() {
		return pass_cc;
	}

	public void setpass_cc(String pass_cc) {
		this.pass_cc = pass_cc;
	}

	public Date getdt_cadastro_cc() {
		return dt_cadastro_cc;
	}

	public void setdt_cadastro_cc(Date dt_cadastro_cc) {
		this.dt_cadastro_cc = dt_cadastro_cc;
	}

}


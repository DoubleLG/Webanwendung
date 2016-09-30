package de.hs_lu.beans;

import java.sql.*;

import de.hs_lu.database.MySQL;
import de.hs_lu.database.PasswordStorage;
import de.hs_lu.database.PasswordStorage.CannotPerformOperationException;
import de.hs_lu.database.PasswordStorage.InvalidHashException;

public class UserBean {

    String userId;
    String userName;
    String password;
    String email;
    String active;
    String admin;
    boolean angemeldet;

    public UserBean() throws ClassNotFoundException, SQLException {
        super();
        userId = "";
        userName = "";
        password = "";
        email = "";
        active = "Y";
        admin = "N";
        angemeldet = false;

    }

    // Funktion - prepareAttributesForDB() Vorbereitung der zu übergebenden
    // Attribute an die Datenbank

    public void prepareAttributesForDB() {
        if (this.userId.length() > 16)
            userId = userId.substring(0, 16);
        if (this.userName.length() > 256)
            userName = userName.substring(0, 256);
        if (this.email.length() > 256)
            email = email.substring(0, 256);
        if (this.password.length() > 128)
            password = password.substring(0, 128);

        if (admin == null)
            admin = "N";
        if (active == null)
            active = "N";

        if (admin.equalsIgnoreCase("Y") || admin.equalsIgnoreCase("yes") || admin.equalsIgnoreCase("j")
                || admin.equalsIgnoreCase("ja"))
            admin = "Y";
        else
            admin = "N";
        if (active.equalsIgnoreCase("Y") || active.equalsIgnoreCase("yes") || active.equalsIgnoreCase("j")
                || active.equalsIgnoreCase("ja"))
            active = "Y";
        else
            active = "N";
    }

    // Funktion - insertUserNoCheck() Übergabe der Registrierungsdaten des neuen
    // Nutzers an die Datenbank ohne Prüfung

    public void insertUserNoCheck() throws ClassNotFoundException, SQLException {
        this.prepareAttributesForDB();

        String sql = "INSERT INTO users (USERID, USERNAME, PASSWORD, EMAIL, ACTIVE, ADMIN) VALUES (?,?,?,?,?,?)";

        System.out.println(sql);

        Connection dbConn = new MySQL().getConnection();
        PreparedStatement prep = dbConn.prepareStatement(sql);
        prep.setString(1, this.userId);
        prep.setString(2, userName);
        prep.setString(3, this.password);
        prep.setString(4, this.email);
        prep.setString(5, this.active);
        prep.setString(6, this.admin);

        prep.executeUpdate();
        System.out.println("User " + this.userId + " erfolgreich hinzugefügt!");
    }

    // Funktion - boolean checkUserExists() Prüfung, ob User bereits existiert

    public boolean checkUserExists() throws ClassNotFoundException, SQLException {
        String sql = "SELECT USERID FROM users WHERE USERID = ?";
        System.out.println(sql);

        Connection dbConn = new MySQL().getConnection();
        PreparedStatement prep = dbConn.prepareStatement(sql);
        prep.setString(1, this.userId);
        ResultSet rs = prep.executeQuery();
        return rs.next();
    }

    // Funktion - boolean checkUserIdPassword - return true if match on userid
    // and pw combination can be found

    public boolean checkUserIdPassword() throws ClassNotFoundException, SQLException, CannotPerformOperationException, InvalidHashException {
        String sql = "SELECT PASSWORD FROM users WHERE USERID = ?";

        Connection dbConn = new MySQL().getConnection();
        PreparedStatement prep = dbConn.prepareStatement(sql);
        prep.setString(1, this.userId);

        ResultSet rs = prep.executeQuery();

        if (rs.next()) {
            return PasswordStorage.verifyPassword(this.password, rs.getString("PASSWORD"));
        }

        return false;

    }

    // Funktion - boolean insertUserIfNotExists() Es wird erst geprüft, ob der
    // User bereits in der DB existiert - ja: return false - nein: 1) Ausführung
    // von insertUserNoCheck 2) return true

    public boolean insertUserIfNotExists() throws ClassNotFoundException, SQLException {
        this.prepareAttributesForDB();
        if (this.checkUserExists())
            return false;
        else {
            this.insertUserNoCheck();
            return true;
        }
    }

    public String getData() throws ClassNotFoundException, SQLException {

        String result = "";
        String sql = "select * from users";

        Connection dbConn = new MySQL().getConnection();

        Statement stmt = dbConn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            result += rs.getString(2);
        }
        return result;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) throws CannotPerformOperationException {
        this.password = PasswordStorage.createHash(password);
    }

    public void setPasswordUnhashed(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public boolean isAngemeldet() {
        return angemeldet;
    }

    public void setAngemeldet(boolean angemeldet) {
        this.angemeldet = angemeldet;
    }

}

package models;

public class DetailModel {
    String product_ID;
    String Description;
    String sName;
    String sEmail;
    String Keywords;
    String Post_Date;

    public DetailModel( String product_ID,String Description, String sName, String sEmail, String Keywords, String Post_Date) {
        this.product_ID = product_ID;
        this.Description = Description;
        this.sName = sName;
        this.sEmail = sEmail;
        this.Keywords = Keywords;
        this.Post_Date = Post_Date;
    }

    public String getProduct_ID() {
        return product_ID;
    }

    public void setProduct_ID(String product_ID) {
        this.product_ID = product_ID;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getsEmail() {
        return sEmail;
    }

    public void setsEmail(String sEmail) {
        this.sEmail = sEmail;
    }

    public String getKeywords() {
        return Keywords;
    }

    public void setKeywords(String keywords) {
        Keywords = keywords;
    }

    public String getPost_Date() {
        return Post_Date;
    }

    public void setPost_Date(String post_Date) {
        Post_Date = post_Date;
    }
}

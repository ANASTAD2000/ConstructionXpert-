package Models;





import java.sql.Timestamp;

public class Resource {
    private int resourceId;
    private String name;
    private String type;
    private int quantity;
    private String supplierInfo;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    // Constructors
    public Resource() {
    }

    public Resource(String name, String type, int quantity, String supplierInfo) {
        this.name = name;
        this.type = type;
        this.quantity = quantity;
        this.supplierInfo = supplierInfo;
    }

    // Getters and Setters
    public int getResourceId() {
        return resourceId;
    }

    public void setResourceId(int resourceId) {
        this.resourceId = resourceId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getSupplierInfo() {
        return supplierInfo;
    }

    public void setSupplierInfo(String supplierInfo) {
        this.supplierInfo = supplierInfo;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Resource [id=" + resourceId + ", name=" + name + ", type=" + type +
                ", quantity=" + quantity + ", supplierInfo=" + supplierInfo + "]";
    }
}
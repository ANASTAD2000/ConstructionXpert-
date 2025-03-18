package Models;



import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Task {
    private int taskId;
    private int projectId;
    private String description;
    private Date startDate;
    private Date endDate;
    private String status;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Map<Resource, Integer> resources; // Resource and quantity used

    // Constructors
    public Task() {
        this.resources = new HashMap<>();
        this.status = "PENDING";
    }

    public Task(int projectId, String description, Date startDate, Date endDate) {
        this.projectId = projectId;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = "PENDING";
        this.resources = new HashMap<>();
    }

    // Getters and Setters
    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getDescription() {
        return description;
    }


    public void setDescription(String description) {
        this.description = description;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public Map<Resource, Integer> getResources() {
        return resources;
    }

    public void setResources(Map<Resource, Integer> resources) {
        this.resources = resources;
    }

    public void addResource(Resource resource, int quantity) {
        this.resources.put(resource, quantity);
    }

    @Override
    public String toString() {
        return "Task [id=" + taskId + ", projectId=" + projectId + ", description=" + description +
                ", startDate=" + startDate + ", endDate=" + endDate + ", status=" + status + "]";
    }
}

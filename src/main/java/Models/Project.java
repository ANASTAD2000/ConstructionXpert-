package Models;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Project {
    private int projectId;
    private String nom;
    private String description;
    private Date dateDebut;
    private Date dateFin;
    private BigDecimal budget;

    private List<Task> tasks;


    // Constructors
    public Project(int id, String nom, String description, Date dateDebut, Date dateFin, double budget) {
        tasks = new ArrayList<>();
    }

    public Project(String name, String description, Date startDate, Date endDate, BigDecimal budget) {
        this.nom = name;
        this.description = description;
        this.dateDebut = startDate;
        this.dateFin = endDate;
        this.budget = budget;
        this.tasks = new ArrayList<>();
    }

    public Project() {

    }

    // Getters and Setters
    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getName() {
        return nom;
    }

    public void setName(String name) {
        this.nom = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(Date dateDebut) {
        this.dateDebut = dateDebut;
    }

    public Date getDateFin() {
        return dateFin;
    }

    public void setDateFin(Date dateFin) {
        this.dateFin = dateFin;
    }

    public BigDecimal getBudget() {
        return budget;
    }

    public void setBudget(BigDecimal budget) {
        this.budget = budget;
    }



    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }

    public void addTask(Task task) {
        tasks.add(task);
    }

    @Override
    public String toString() {
        return "Project [id=" + projectId + ", name=" + nom + ", dateDebut=" + dateDebut +
                ", dateFin=" + dateFin + ", budget=" + budget + "]";
    }
}

package CafeteriaApp;

public class Review {
    private MenuItem menuItem;
    private int rating; // Rating out of 5
    private String comment;

    public Review(MenuItem menuItem, int rating, String comment) {
        this.menuItem = menuItem;
        this.rating = rating;
        this.comment = comment;
    }

    public MenuItem getMenuItem() {
        return menuItem;
    }

    public int getRating() {
        return rating;
    }

    public String getComment() {
        return comment;
    }

    @Override
    public String toString() {
        return "Review for " + menuItem.getName() + ": " +
               "Rating: " + rating + "/5, " +
               "Comment: " + comment;
    }
}


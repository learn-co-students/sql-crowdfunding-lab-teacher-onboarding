def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
  "SELECT title, sum(amount)
  FROM projects
  INNER JOIN pledges ON projects.id = pledges.project_id
  GROUP BY title
  ORDER BY title;
  "
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "
    SELECT name, age, sum(amount)
    FROM users
    INNER JOIN pledges on users.id = pledges.user_id
    GROUP BY name
    ORDER BY name
  "
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "
    SELECT title, sum(amount) - funding_goal
    FROM projects
    INNER JOIN pledges ON projects.id = pledges.project_id
    GROUP BY title
    HAVING sum(amount) >= funding_goal;
  "
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
  "
    SELECT name, sum(amount)
    FROM users
    INNER JOIN pledges ON users.id = pledges.user_id
    GROUP BY name
    ORDER BY sum(amount), name
  "
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT category, amount
    FROM pledges
    INNER JOIN projects ON pledges.project_id = projects.id
    WHERE category = 'music'
  "
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT category, sum(amount)
  FROM pledges
  INNER JOIN projects ON projects.id = pledges.project_id
  WHERE category = 'books'
  "
end
